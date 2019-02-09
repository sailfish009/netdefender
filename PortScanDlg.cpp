// PortScanDlg.cpp : implementation file
//

#include "stdafx.h"
#include "fire.h"
#include "PortScanDlg.h"
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <io.h>
#include "TheSocket.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPortScanDlg dialog


CPortScanDlg::CPortScanDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CPortScanDlg::IDD, pParent)
{

	m_pColumns = new CStringList;
	ASSERT(m_pColumns);
	m_bSinglePort = TRUE;
	m_nMaxAttempts = 1;	//default value, This value has been set on the window
	m_pStatusList = new CPtrList;
	ASSERT(m_pStatusList);
	//{{AFX_DATA_INIT(CPortScanDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}

CPortScanDlg::~CPortScanDlg()
{
	if (m_pStatusList)
	{
		//First Empty the port status list:
		POSITION p = m_pStatusList->GetHeadPosition();
		while (p)
		{
			POSITION temp = p;
			DATA* pNode = (DATA*)m_pStatusList->GetNext(p);
			m_pStatusList->RemoveAt(temp);
			if (pNode)
				delete pNode;
		}
		//Then remove it from heap:
		delete m_pStatusList;
	}
}


void CPortScanDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CPortScanDlg)
	DDX_Control(pDX, IDC_STATUS_BAR, m_static);
	DDX_Control(pDX, IDC_PROGRESS, m_cProgress);
	DDX_Control(pDX, IDC_LIST_RESULT, m_cResult);
	DDX_Control(pDX, IDC_IP_ADDRESS, m_cIP);
	DDX_Control(pDX, IDC_EDIT_SINGLE_PORT_TO, m_cPortTo);
	DDX_Control(pDX, IDC_EDIT_SINGLE_PORT_FROM, m_cPortFrom);
	DDX_Control(pDX, IDC_EDIT_SINGLE_PORT, m_cSinglePort);
	DDX_Control(pDX, IDC_EDIT_ATTEMPTS, m_cAttempts);
	DDX_Control(pDX, IDC_BUTTON_STOP, m_cBtnStop);
	DDX_Control(pDX, IDC_BUTTON_SCAN, m_cBtnScan);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CPortScanDlg, CDialog)
	//{{AFX_MSG_MAP(CPortScanDlg)
	ON_WM_SHOWWINDOW()
	ON_BN_CLICKED(IDC_RADIO_SINGLE, OnRadioSingle)
	ON_BN_CLICKED(IDC_RADIO_RANGE, OnRadioRange)
	ON_BN_CLICKED(IDC_BUTTON_SCAN, OnButtonScan)
	ON_BN_CLICKED(IDC_BUTTON_STOP, OnButtonStop)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPortScanDlg message handlers

BOOL CPortScanDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	//*****************************************************
	AddHeader(_T("IP address"));
	AddHeader(_T("Port number"));
	AddHeader(_T("Port Status"));
	AddHeader(_T("Attempts"));
	AddHeader(_T("Remarks"));
	/////////////////////////////
	ShowHeaders();
	CheckRadioButton(IDC_RADIO_SINGLE,IDC_RADIO_RANGE,IDC_RADIO_SINGLE);
	m_cSinglePort.EnableWindow();
	m_cPortFrom.EnableWindow(FALSE);
	m_cPortTo.EnableWindow(FALSE);
	//	m_cBtnStop.EnableWindow(FALSE);
	m_cAttempts.SetWindowText(_T("1"));
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}


//*************************************************************
BOOL CPortScanDlg::AddColumn(LPCTSTR strItem,int nItem,int nSubItem,int nMask,int nFmt)
{
	LV_COLUMN lvc;
	lvc.mask = nMask;
	lvc.fmt = nFmt;
	lvc.pszText = (LPTSTR) strItem;
	lvc.cx = m_cResult.GetStringWidth(lvc.pszText) + 25;
	if(nMask & LVCF_SUBITEM)
	{
		if(nSubItem != -1)
			lvc.iSubItem = nSubItem;
		else
			lvc.iSubItem = nItem;
	}
	return m_cResult.InsertColumn(nItem,&lvc);
}

BOOL CPortScanDlg::AddItem(int nItem,int nSubItem,LPCTSTR strItem ,int nImageIndex)
{
	LV_ITEM lvItem;
	lvItem.mask = LVIF_TEXT;
	lvItem.iItem = nItem;
	lvItem.iSubItem = nSubItem;
	lvItem.pszText = (LPTSTR) strItem;

	if(nImageIndex != -1)
	{
		lvItem.mask |= LVIF_IMAGE;
		lvItem.iImage |= LVIF_IMAGE;
	}

	if(nSubItem == 0)
		return m_cResult.InsertItem(&lvItem);

	return m_cResult.SetItem(&lvItem);
}

void CPortScanDlg::AddHeader(LPTSTR hdr)
{
	if (m_pColumns)
		m_pColumns->AddTail(hdr);
}

void CPortScanDlg::ShowHeaders()
{
	int nIndex = 0;
	POSITION pos = m_pColumns->GetHeadPosition();
	while (pos)
	{
		CString hdr = (CString)m_pColumns->GetNext(pos);
		AddColumn(hdr,nIndex++);
	}
}
BOOL CPortScanDlg::TestConnection(CString IP, UINT nPort)
{
	CTheSocket* pSocket;
	pSocket = new CTheSocket;
	ASSERT(pSocket);

	if (!pSocket->Create())
	{
		delete pSocket;
		pSocket = NULL;
		return FALSE;
	}

	while (!pSocket->Connect(IP , nPort))
	{
		delete pSocket;
		pSocket = NULL;
		return FALSE;
	}

	pSocket->Close();
	delete pSocket;
	return TRUE;
}

void CPortScanDlg::OnShowWindow(BOOL bShow, UINT nStatus) 
{
	CDialog::OnShowWindow(bShow, nStatus);
	
	// TODO: Add your message handler code here
	//*************************************************
	AddHeader(_T("IP address"));
	AddHeader(_T("Port number"));
	AddHeader(_T("Port Status"));
	AddHeader(_T("Attempts"));
	AddHeader(_T("Remarks"));
	
}
void CPortScanDlg::OnRadioSingle() 
{
	m_bSinglePort = TRUE;
	m_cSinglePort.EnableWindow();
	m_cPortFrom.EnableWindow(FALSE);
	m_cPortTo.EnableWindow(FALSE);
}

void CPortScanDlg::OnRadioRange() 
{
	m_bSinglePort = FALSE;
	m_cSinglePort.EnableWindow(FALSE);
	m_cPortFrom.EnableWindow();
	m_cPortTo.EnableWindow();
	m_cBtnStop.EnableWindow(FALSE);
}

void CPortScanDlg::OnButtonScan() 
{
	CString btnTxt,IP;
	UINT nSinglePort;
	BYTE f1,f2,f3,f4;
	TCHAR temp[10] = "\0";

	m_cProgress.SetPos(0);
	m_cResult.DeleteAllItems();

	//Empty the port status list:
	POSITION p = m_pStatusList->GetHeadPosition();
	while (p)
	{
		POSITION temp = p;
		DATA* pNode = (DATA*)m_pStatusList->GetNext(p);
		m_pStatusList->RemoveAt(temp);
		if (pNode)
			delete pNode;
	}

	if (m_cIP.IsBlank())
	{
		MessageBox(_T("Please specify the remote machine's IP address."),
			_T("Error"),
			MB_OK | MB_ICONEXCLAMATION);
		return;
	}
	
	if (m_cIP.GetAddress(f1,f2,f3,f4) < 4)
	{
		MessageBox(_T("Please specify the IP address again."),
			_T("Invalid IP address"),MB_OK | MB_ICONEXCLAMATION);
		return;
	}

	IP = _itoa(f1,temp,10);
	IP += _T('.');
	IP += _itoa(f2,temp,10);
	IP += _T('.');
	IP += _itoa(f3,temp,10);
	IP += _T('.');
	IP += _itoa(f4,temp,10);

	m_cBtnStop.EnableWindow();
	m_cBtnScan.EnableWindow(FALSE);

	if (m_bSinglePort)
	{
		CString port;
		m_cSinglePort.GetWindowText(port);
		m_minPort = m_maxPort = nSinglePort = atoi(port);
	}
	else
	{
		CString port1,port2;
		m_cPortFrom.GetWindowText(port1);
		m_cPortTo.GetWindowText(port2);
		m_minPort = atoi(port1);
		m_maxPort = atoi(port2);
		m_cProgress.SetRange32(0,m_maxPort - m_minPort+1);
		m_cProgress.SetStep(1);
	}

	
	if (!m_bSinglePort && m_maxPort < m_minPort)
	{
		MessageBox(_T("The maximum range cannot be less than the minimum one."),
			_T("Caution"),
			MB_OK | MB_ICONINFORMATION);
		return;
	}

	UINT m_nMaxAttempts = GetDlgItemInt(IDC_EDIT_ATTEMPTS);

	for (m_nCounter = m_minPort; m_nCounter <= m_maxPort; m_nCounter++)
	{
		BOOL bIsOpen = FALSE;
		UINT nAttempt = 1;
		
		while(nAttempt <= m_nMaxAttempts && !bIsOpen)
		{
			TCHAR temp[10]="\0";
			CString str = _T("Trying port# ");
#ifdef _UNICODE
			str += _itow(m_nCounter,temp,10);
#else
			str += itoa(m_nCounter,temp,10);
#endif
			str += _T(", IP Address=");
			str += IP;
			str += _T(", Attempt=");
#ifdef _UNICODE
			str += _itow(nAttempt,temp,10);
#else
			str += itoa(nAttempt,temp,10);
#endif
			m_static.SetWindowText(str);//;
			str.Empty();
			bIsOpen = TestConnection(IP,m_nCounter);

			if (bIsOpen)
			{
				DATA* pNode = new DATA;
				ASSERT(pNode);
				strcpy(pNode->IPAddress,IP.GetBuffer(IP.GetLength()));
				strcpy(pNode->port,_itoa(m_nCounter,temp,10));
				pNode->bStatus = 1; //open
				pNode->nAttempts = nAttempt;
				m_pStatusList->AddTail(pNode);
			}
			nAttempt++;
		}

		if (!bIsOpen)
		{
			DATA* pNode = new DATA;
			ASSERT(pNode);
			strcpy(pNode->IPAddress,IP.GetBuffer(IP.GetLength()));
			strcpy(pNode->port,_itoa(m_nCounter,temp,10));
			pNode->bStatus = 0; //close
			pNode->nAttempts = nAttempt-1;
			m_pStatusList->AddTail(pNode);
		}
		
		MSG message;
		if (::PeekMessage(&message,NULL,0,0,PM_REMOVE))
		{
			::TranslateMessage(&message);
			::DispatchMessage(&message);
		}
		m_cProgress.StepIt();
	}
	m_static.SetWindowText((CString)_T("Ready"));
	m_cBtnScan.EnableWindow();
	m_cBtnStop.EnableWindow(FALSE);

	//Filling report view:
	UINT nIndex = 0;
	POSITION pos = m_pStatusList->GetHeadPosition();
	while (pos)
	{
		DATA* pNode = (DATA*)m_pStatusList->GetNext(pos);
		AddItem(nIndex,0,pNode->IPAddress);
		AddItem(nIndex,1,pNode->port);
		if (pNode->bStatus)
		{
			AddItem(nIndex,2,_T("Open"));
			AddItem(nIndex,4,_T("*"));
		}
		else
		{
			AddItem(nIndex,2,_T("Close"));
			AddItem(nIndex,4,_T(" "));
		}
		AddItem(nIndex++,3,_itoa(pNode->nAttempts,temp,10));
	}
}

void CPortScanDlg::OnButtonStop() 
{
	m_nCounter = m_maxPort+1;
	m_cBtnStop.EnableWindow(FALSE);
	m_cBtnScan.EnableWindow();
	m_static.SetWindowText((CString)_T("Ready"));
}
