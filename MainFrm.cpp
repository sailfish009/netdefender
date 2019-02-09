// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "fire.h"

#include "MainFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define WM_ICON_NOTIFY			WM_APP + 10

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_WM_CLOSE()
	ON_COMMAND(ID_POPUP_EXIT, OnPopupExit)
	ON_COMMAND(ID_POPUP_MINIMIZE, OnPopupMinimize)
	ON_COMMAND(ID_POPUP_MAXIMIZE, OnPopupMaximize)
	ON_COMMAND(ID_EXIT, OnExit)
	ON_COMMAND(ID_ICON, OnIcon)
	ON_COMMAND(ID_TOOLS_PORTSCANNER, OnToolsPortscanner)
	// Global help commands
	ON_COMMAND(ID_HELP_FINDER, CFrameWnd::OnHelpFinder)
	ON_COMMAND(ID_HELP, CFrameWnd::OnHelp)
	ON_COMMAND(ID_CONTEXT_HELP, CFrameWnd::OnContextHelp)
	ON_COMMAND(ID_DEFAULT_HELP, CFrameWnd::OnHelpFinder)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
	ID_INDICATOR_ONLINELED,
	ID_INDICATOR_OFFLINELED
};

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
	
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
		| CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
		!m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create toolbar\n");
		return -1;      // fail to create
	}
	//****************************************************************
	int iTBCtlID;
	iTBCtlID = m_wndToolBar.CommandToIndex(ID_ICON);
	m_wndToolBar.SetButtonStyle(iTBCtlID, TBBS_GROUP);


	if (!m_wndStatusBar.Create(this) ||
		!m_wndStatusBar.SetIndicators(indicators,
		  sizeof(indicators)/sizeof(UINT)))
	{
		TRACE0("Failed to create status bar\n");
		return -1;      // fail to create
	}
	//********************************************************
	m_wndStatusBar.SetPaneInfo(0, m_wndStatusBar.GetItemID(0), SBPS_STRETCH, NULL );
	SetOnlineLed(FALSE);
	SetOfflineLed(TRUE);

		m_wndStatusBar.SetPaneInfo(m_wndStatusBar.CommandToIndex(ID_INDICATOR_ONLINELED),ID_INDICATOR_ONLINELED, SBPS_NOBORDERS, 14);
//		m_wndStatusBar.GetStatusBarCtrl().SetTipText(m_wndStatusBar.CommandToIndex(ID_INDICATOR_ONLINELED), "This status light is green when the server is online");

		m_wndStatusBar.SetPaneInfo(m_wndStatusBar.CommandToIndex(ID_INDICATOR_OFFLINELED),ID_INDICATOR_OFFLINELED, SBPS_NOBORDERS, 14);
//		m_wndStatusBar.GetStatusBarCtrl().SetTipText(m_wndStatusBar.CommandToIndex(ID_INDICATOR_OFFLINELED), "This status light is green when the server is online");
	

	// TODO: Delete these three lines if you don't want the toolbar to
	//  be dockable
	m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
	EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_wndToolBar);
	//***************************************************************

	HICON hIcon = ::LoadIcon (AfxGetResourceHandle (),
							MAKEINTRESOURCE(IDI_MAINFRAME)); //Icon to be Used
	if(!m_SysTray.Create(NULL,		 // Let icon deal with its own messages
						WM_ICON_NOTIFY,		// Icon notify message to use
						_T("Firewall Running"),		// tooltip
						hIcon,
						IDR_MENU1,					// ID of tray Menu
						FALSE))
	CSystemTray::MinimiseToTray(this);
//		m_SysTray.SetMenuDefaultItem (ID_POPUP_MAXIMIZE,FALSE);

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs
	cs.style &= ~WS_THICKFRAME;
	cs.style &= ~WS_MAXIMIZEBOX;
	
	return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers


void CMainFrame::OnClose() 
{
	// TODO: Add your message handler code here and/or call default
		CSystemTray::MinimiseToTray(this);
		m_SysTray.SetMenuDefaultItem (ID_POPUP_MAXIMIZE,FALSE);
	
	//CFrameWnd::OnClose();
}

void CMainFrame::OnPopupExit() 
{
	// TODO: Add your command handler code here
	int i = MessageBox ("Closing Firewall will disable its security engine and leave your computer\n unprotected.Are you sure you want to exit ?"," Warning" , MB_YESNO |MB_ICONEXCLAMATION);
	if (i ==IDYES)
	{
	CFrameWnd::OnClose();
	}
	else
	{
	}
}

void CMainFrame::OnPopupMinimize() 
{
	// TODO: Add your command handler code here
		CSystemTray::MinimiseToTray(this);
	m_SysTray.SetMenuDefaultItem (ID_POPUP_MAXIMIZE,FALSE);

}

void CMainFrame::OnPopupMaximize() 
{
	// TODO: Add your command handler code here
	CSystemTray ::MaximiseFromTray(this);
	m_SysTray.SetMenuDefaultItem (ID_POPUP_MINIMIZE,FALSE);
	
	
}

void CMainFrame::OnExit() 
{
	// TODO: Add your command handler code here
	AfxMessageBox ("To Shutdown the firewall right click on the System Tray Icon & choose Shutdown from there");
	OnClose ();
	
}

void CMainFrame::OnIcon() 
{
	// TODO: Add your command handler code here
	
}

void CMainFrame::OnToolsPortscanner() 
{
//	 TODO: Add your command handler code here
	CPortScanDlg m_PortScan;
	m_PortScan.DoModal ();
	//WinExec ("PortScan.exe",SW_SHOW);
	
}

/********************************************************************/
/*																	*/
/* Function name : SetOnlineLed										*/	
/* Description   : Turn online LED on/off.							*/
/*																	*/
/********************************************************************/
void CMainFrame::SetOnlineLed(BOOL bOnline)
{
	HICON hIcon = (HICON)::LoadImage(AfxGetInstanceHandle(),
				bOnline ? MAKEINTRESOURCE(IDI_LED_GREEN) : MAKEINTRESOURCE(IDI_LED_OFF),
				 IMAGE_ICON, 16, 16, LR_SHARED);
	m_wndStatusBar.GetStatusBarCtrl().SetIcon(m_wndStatusBar.CommandToIndex(ID_INDICATOR_ONLINELED), hIcon);
	m_wndStatusBar.GetStatusBarCtrl().Invalidate();
	m_wndStatusBar.GetStatusBarCtrl().UpdateWindow();
	DestroyIcon(hIcon);
}


/********************************************************************/
/*																	*/
/* Function name : SetOfflineLed									*/	
/* Description   : Turn offline LED on/off.							*/
/*																	*/
/********************************************************************/
void CMainFrame::SetOfflineLed(BOOL bOffline)
{
	HICON hIcon = (HICON)::LoadImage(AfxGetInstanceHandle(),
				bOffline ? MAKEINTRESOURCE(IDI_LED_RED) : MAKEINTRESOURCE(IDI_LED_OFF),
				 IMAGE_ICON, 16, 16, LR_SHARED);
	m_wndStatusBar.GetStatusBarCtrl().SetIcon(m_wndStatusBar.CommandToIndex(ID_INDICATOR_OFFLINELED), hIcon);
	m_wndStatusBar.GetStatusBarCtrl().Invalidate();
	m_wndStatusBar.GetStatusBarCtrl().UpdateWindow();
	DestroyIcon(hIcon);
}


