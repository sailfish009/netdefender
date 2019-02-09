#if !defined(AFX_PORTSCANDLG_H__0391AA01_67AD_11D7_B841_AB5862F4201F__INCLUDED_)
#define AFX_PORTSCANDLG_H__0391AA01_67AD_11D7_B841_AB5862F4201F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// PortScanDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CPortScanDlg dialog
//This data structure registers the statuses of scanned ports:
typedef struct
{
	int nAttempts;
	TCHAR IPAddress[16];
	TCHAR port[5];
	BOOL bStatus; //1 = open , 0 = close
}DATA;


class CPortScanDlg : public CDialog
{
// Construction
public:
	BOOL TestConnection(CString IP, UINT nPort);
	virtual ~CPortScanDlg();
public:
	//*********************************************************
	UINT m_nMaxAttempts;	//Maximum attempts to connect a socket
	CPortScanDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CPortScanDlg)
	enum { IDD = 134 };
	CStatic	m_static;
	CProgressCtrl	m_cProgress;
	CListCtrl	m_cResult;
	CIPAddressCtrl	m_cIP;
	CEdit	m_cPortTo;
	CEdit	m_cPortFrom;
	CEdit	m_cSinglePort;
	CEdit	m_cAttempts;
	CButton	m_cBtnStop;
	CButton	m_cBtnScan;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPortScanDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//******************************************************************
	void ShowHeaders(void);	//Shows the headers of member variable m_cResult (See below)
	void AddHeader(LPTSTR hdr);	//Adds some new headers to m_cResult.
	AddItem(int nItem,int nSubItem,LPCTSTR strItem,int nImageIndex = -1);	//Adds a new item to m_cResult
	
	AddColumn(		
	LPCTSTR strItem,int nItem,int nSubItem = -1,
	int nMask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT | LVCF_SUBITEM,
	int nFmt = LVCFMT_LEFT);//Adds a new column to m_cResult
//	CMainFrame* m_parent;

	BOOL m_bSinglePort;
	UINT m_minPort,m_maxPort;	//Lower bound and upper bound of scanning ports range
	UINT m_nCounter;
	CStringList* m_pColumns;//titles of columns of m_cResult
//*******************************************************************************
	// Generated message map functions
	//{{AFX_MSG(CPortScanDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnShowWindow(BOOL bShow, UINT nStatus);
	afx_msg void OnRadioSingle();
	afx_msg void OnRadioRange();
	afx_msg void OnButtonScan();
	afx_msg void OnButtonStop();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CPtrList* m_pStatusList;//Our link list. The nodes are in type DATA*. See the above structure...
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PORTSCANDLG_H__0391AA01_67AD_11D7_B841_AB5862F4201F__INCLUDED_)
