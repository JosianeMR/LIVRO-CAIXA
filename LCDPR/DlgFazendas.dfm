�
 TDLG_FAZENDAS 0�  TPF0TDlg_FazendasDlg_FazendasLeft� Top|BorderStylebsDialogCaptionPesquisa FazendasClientHeight#ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TBevelBevel1LeftTopWidth�HeightShapebsFrame  TLabelLabel20Left� Top� Width>HeightCaption	PesquisarFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TButtonOKBtnLeft� Top� WidthZHeightCaptionOKDefault	Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ModalResult
ParentFontTabOrder   TButton	CancelBtnLeft� Top� WidthZHeightCancel	CaptionCancelarDefault	Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ModalResult
ParentFontTabOrder  TEditEdit_procuraLeft� Top� Width� HeightHintDigite algo para a pesquisaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontParentShowHintShowHint	TabOrderOnChangeEdit_procuraChange  TDBNavigator	navegadorLeftBTop� Width\Height
DataSourceDs_PesquisaVisibleButtonsnbFirstnbPriornbNextnbLast Ctl3D	ParentCtl3DTabOrder  TDBGridDBGrid1LeftTopWidth�Height� 
DataSourceDs_PesquisaFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelection 
ParentFontReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style Columns	AlignmenttaCenterExpanded	FieldNameCODIGOTitle.AlignmenttaCenterTitle.Caption   CódigoTitle.ColorclBlueTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameArialTitle.Font.StylefsBold Width5Visible	 Expanded	FieldNameNOMETitle.AlignmenttaCenterTitle.CaptionNomeTitle.ColorclBlueTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameArialTitle.Font.StylefsBold Width1Visible	    TRadioGroupRG_ordemLeftTop� WidthqHeightJCaption Ordem: Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings   &1 - Alfabética     &2 - Numérica 
ParentFontTabOrderOnClickRG_ordemClick  TDataSourceDs_PesquisaDataSetFDQuery_PesquisaLeft� Tope  TFDQueryFDQuery_Pesquisa	AfterOpenFDQuery_PesquisaAfterOpen
ConnectionDM.BD_SISFAZSQL.Strings SELECT CODIGO, NOME FROM FAZENDAORDER BY NOME LeftTop   