�
 TDLG_CIDADES 0�  TPF0TDlg_CidadesDlg_CidadesLeftRTop� BorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaptionPesquisa de CidadesClientHeight\ClientWidth,Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPositionpoScreenCenterOnCreate
FormCreate	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TBevelBevel1Left{Top	Width� Height?  TLabelLabel1Left� TopWidtheHeightCaption   Texto à PesquisarFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TDBGridDBGrid1Left Top Width,HeightAlignalTopColorclCream
DataSourceds_pesquisa
FixedColorclGrayFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontReadOnly	TabOrderTitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold 
OnDblClickDBGrid1DblClickColumns	AlignmenttaCenterExpanded	FieldNameCODIGOTitle.AlignmenttaCenterTitle.Caption   CódigoTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameTahomaTitle.Font.StylefsBold Width5Visible	 Expanded	FieldNameNOMETitle.Caption  NomeTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameTahomaTitle.Font.StylefsBold WidthVVisible	 	AlignmenttaCenterExpanded	FieldNameSIGLATitle.AlignmenttaCenterTitle.CaptionUFTitle.Font.CharsetANSI_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameTahomaTitle.Font.StylefsBold Width&Visible	 Expanded	FieldNameID_IBGETitle.CaptionCOD IBGEWidthVVisible	    TEditEdPesqLeft� Top'Width� HeightCharCaseecUpperCaseColorclCreamFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnChangeEdPesqChange  
TStatusBar
StatusBar1Left TopIWidth,HeightPanelsWidth�  	AlignmenttaCenterText[Enter] = ConfirmaWidthx 	AlignmenttaCenterText[Esc] = CancelaWidthx Width2    TRadioGroupRG_pesquisaLeftjTopWidth� HeightFCaptionPesquisar: Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings&1 - Inicio&2 - Concatenada 
ParentFontTabOrderOnClickRG_pesquisaClick  TRadioGroupRG_ordemLeftTopWidthwHeightFCaption Ordem: Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndex Items.Strings   &Alfabética
   &Cód Ibge 
ParentFontTabOrderOnClickRG_ordemClick  TDataSourceds_pesquisaDataSetFDQuery_PesquisaLeft�Top8  TFDQueryFDQuery_Pesquisa	AfterOpenFDQuery_PesquisaAfterOpen
ConnectionDM.bd_lcdprSQL.Strings,SELECT A.CODIGO, A.NOME, A.ID_IBGE, B.SIGLA FROM CIDADE A, ESTADO BWHERE (A.CODESTADO = B.CODIGO) ORDER BY A.NOME LeftTop   