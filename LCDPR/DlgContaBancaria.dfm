�
 TDLG_CONTABANCARIA 0�  TPF0TDlg_ContaBancariaDlg_ContaBancariaLeftRTop� BorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaption   Pesquisa de Conta BancáriaClientHeightbClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoScreenCenter	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TBevelBevel1Left{Top	Width� Height?  TLabelLabel1Left� TopWidtheHeightCaption   Texto à PesquisarFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBGridDBGrid1Left Top Width�HeightAlignalTopColorclCream
DataSourceds_pesquisa
FixedColorclGrayFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
OnDblClickDBGrid1DblClickColumns	AlignmenttaCenterExpanded	FieldNameCODIGOTitle.AlignmenttaCenterTitle.Caption   CódigoTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameTahomaTitle.Font.StylefsBold Width5Visible	 Expanded	FieldName	NRO_CONTATitle.CaptionContaTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameTahomaTitle.Font.StylefsBold WidthVVisible	 Expanded	FieldNameNOME_DECLARANTETitle.CaptionTitular da ContaTitle.Font.CharsetDEFAULT_CHARSETTitle.Font.ColorclWindowTextTitle.Font.Height�Title.Font.NameMS Sans SerifTitle.Font.StylefsBold Width� Visible	    TEditEdPesqLeft� Top'Width� HeightCharCaseecUpperCaseColorclCreamFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnChangeEdPesqChange  
TStatusBar
StatusBar1Left TopOWidth�HeightPanelsWidth�  	AlignmenttaCenterText[Enter] = ConfirmaWidthx 	AlignmenttaCenterText[Esc] = CancelaWidthx Width2    TRadioGroupRG_pesquisaLeftjTopWidth� HeightFCaptionPesquisar: Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndexItems.Strings&1 - Inicio&2 - Concatenada 
ParentFontTabOrderOnClickRG_pesquisaClick  TRadioGroupRG_ordemLeftTopWidthwHeightFCaption Ordem: Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings   &Alfabética
   &Numérica 
ParentFontTabOrderOnClickRG_ordemClick  TDataSourceds_pesquisaDataSetFDQuery_PesquisaLeft�Top8  TFDQueryFDQuery_Pesquisa	AfterOpenFDQuery_PesquisaAfterOpen
ConnectionDM.bd_lcdprSQL.Strings5SELECT A.*, B.NOME NOME_BANCO, C.NOME NOME_DECLARANTEFROM CONTA_BANCARIA A)JOIN BANCOS B ON (A.COD_BANCO = B.CODIGO)0JOIN CONTRIBUINTE C ON (A.CODCONTRIB = C.CODIGO)order by A.codigo LeftTop   