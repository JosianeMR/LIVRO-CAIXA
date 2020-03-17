object LCD_0203: TLCD_0203
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 527
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 41
    Align = alTop
    BorderStyle = bsSingle
    Caption = 'Importa'#231#227'o dos Lan'#231'amentos do SISFAZ'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 486
    Width = 1277
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object bbtn_sair: TBitBtn
      Left = 285
      Top = 3
      Width = 113
      Height = 32
      Caption = '&Sair <ESC>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000120B0000120B00000000000000000000FFFFFFFFFFFF
        F8F9FDEAEBF2E9EAF2E9ECF4E9ECF4E9ECF4EAECF4EAECF4EBEDF4EBECF4EAED
        F4E9ECF3EBEAF2FFFFFFFFFFFF00FFFFFFD6DDF22F4DC01635AE1E3CB21D3CB2
        1D3CB21E3CB21939B31536B41436B51335B61235B71235B70F2DAB8093D0FDFD
        FE00FFFFFF7288DD0028C71E45D2274CDA274CD92046D81A41D7163ED6113CD8
        0B3ADB0C3EDF093ADE0535DC0331D1092BACEAE9F200FFFFFF6A88EA0C3BDD2F
        53E13757E63455E5627CEDA0B4F4B8C6F7B2C2F57991F12350E70E42E31042E1
        113ED91133B5E8EAF300FFFFFF6E8BEB1943E13B5AE53E5EE5A4B5F4ECEFFFB2
        C0F68499EE91A9F3C7DBF8DBE2FC3762E80B3FE3123ED81335B4E8EAF300FFFF
        FF728EEC2549E13E5DE598A9F3E9EDF95F79EA3D5CE65772E93D5DE52A4FE29B
        ABF6D8DFFD2250E71443DB1B39B2E7EAF400FFFFFF7993EC2C4FE25470E9E4EA
        FE7D91EE405FE54E6AE8FFFFFF95A7F12248E01C45E2C8D4FB7A95F30F40DC1B
        39B2E7EAF400FFFFFF7C95EB3253E37C92EDDAE3FB506BE74A67E74D6AE8FEFF
        FF92A5F0254AE11C46E1758FEFBBCBF80E3EDB1B39B2E7EAF400FFFFFF8399EF
        3858E38497EED7DDF94965E54B68E74C69E8FFFFFE94A5F02348E12249E15A7C
        EBC9D4FA103EDB1A39B2E7EAF400FFFFFF869AEF3F5DE47C94EDDAE2FA516CE7
        4865E74C69E8FFFFFF92A3F02047E01A45E16D89ECC2D1F81A43DA1939B2E7EA
        F400FFFFFF899DEE516EE66C86ECE7EDFD7D91EE3F5EE54A67E8FFFFFF94A5F0
        1C44DF1D46E1C5D2F8899FED1E45DB1938B2E7E9F300FFFFFF8C9FEF5874E962
        7CEAA8B8F3ECECFC657DEC3D5CE65772E93D5CE4294DE293A5F1DDE4FB3557E6
        254BDB1938B2E7E9F300FFFFFF8FA2F06780E97B8FEA6681EAB1C0F4EEF1FEB1
        BEF6899CF090A1EFCED6F6DEE3FD4E6EE6274CE22A4FDD1C3AB5E7E9F300FFFF
        FF93A4F27A8EEA96A5F0778CEC6780E8869BF0BCCBF6CED6F8CBD4F79AADF352
        6DE9405FE6405FE62E50DD1837B2E6E9F300FFFFFF97A8F07C8FF19CAAF68092
        EB6E86EB617CE95D78E85974E85672E7516DE7516DE64C69E73D5CE62449D918
        37B5EAECF600FFFFFFDEE7FA758FF0657EED5A75E9526EE74E6BE64D6BE64D6A
        E64967E64263E63F61E63A5DE52D55E6254AD1889AD9FEFEFF00FFFFFFFFFFFF
        F8FAFEEBEEFCEBEEFCECEFFDEBEFFCEBEFFCEBEFFCECEFFCECEFFCEBEFFDEBF0
        FDEAEFFDEDEFFBFFFFFFFFFFFF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbtn_sairClick
    end
  end
  object grdMovtoSisfaz: TcxGrid
    Left = 0
    Top = 41
    Width = 1277
    Height = 445
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 360
    ExplicitTop = 74
    object grdMovtoSisfazDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DS_movto
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      object grdMovtoSisfazDBTableView1CONTROLE: TcxGridDBColumn
        DataBinding.FieldName = 'CONTROLE'
        Width = 54
      end
      object grdMovtoSisfazDBTableView1DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        Width = 53
      end
      object grdMovtoSisfazDBTableView1COD_IMOVEL: TcxGridDBColumn
        DataBinding.FieldName = 'COD_IMOVEL'
        Width = 53
      end
      object grdMovtoSisfazDBTableView1COD_CONTA: TcxGridDBColumn
        DataBinding.FieldName = 'COD_CONTA'
        Width = 52
      end
      object grdMovtoSisfazDBTableView1NUM_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_DOC'
        Width = 55
      end
      object grdMovtoSisfazDBTableView1TIPO_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO_DOC'
        Width = 52
      end
      object grdMovtoSisfazDBTableView1HISTORICO: TcxGridDBColumn
        DataBinding.FieldName = 'HISTORICO'
        Width = 298
      end
      object grdMovtoSisfazDBTableView1CODCONTRIB: TcxGridDBColumn
        DataBinding.FieldName = 'CODCONTRIB'
        Width = 61
      end
      object grdMovtoSisfazDBTableView1TIPO_LANCTO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO_LANCTO'
        Width = 55
      end
      object grdMovtoSisfazDBTableView1VLR_ENTRADA: TcxGridDBColumn
        DataBinding.FieldName = 'VLR_ENTRADA'
        Width = 92
      end
      object grdMovtoSisfazDBTableView1VLR_SAIDA: TcxGridDBColumn
        DataBinding.FieldName = 'VLR_SAIDA'
        Width = 107
      end
      object grdMovtoSisfazDBTableView1CNPJ_CLIFOR: TcxGridDBColumn
        DataBinding.FieldName = 'CNPJ_CLIFOR'
        Width = 123
      end
      object grdMovtoSisfazDBTableView1DUPL_NRO: TcxGridDBColumn
        DataBinding.FieldName = 'DUPL_NRO'
        Width = 92
      end
      object grdMovtoSisfazDBTableView1DUPL_FLG_DC: TcxGridDBColumn
        DataBinding.FieldName = 'DUPL_FLG_DC'
        Width = 39
      end
      object grdMovtoSisfazDBTableView1CC_CUSTO: TcxGridDBColumn
        DataBinding.FieldName = 'CC_CUSTO'
        Width = 72
      end
    end
    object grdMovtoSisfazLevel1: TcxGridLevel
      GridView = grdMovtoSisfazDBTableView1
    end
  end
  object BD_SISFAZ: TFDConnection
    Params.Strings = (
      'Password=masterkey'
      'User_Name=sysdba'
      'Database=C:\BANCO DE DADOS\SISFAZ.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 440
    Top = 88
  end
  object qry_movto: TFDQuery
    Active = True
    Connection = DM.bd_lcdpr
    SQL.Strings = (
      'SELECT A.*'
      'FROM MOVTO_LIVRO A'
      'order by a.DATA')
    Left = 176
    Top = 8
    object qry_movtoCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_movtoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qry_movtoCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
    object qry_movtoCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'COD_CONTA'
    end
    object qry_movtoNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Origin = 'NUM_DOC'
      Size = 10
    end
    object qry_movtoTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
    end
    object qry_movtoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 100
    end
    object qry_movtoCODCONTRIB: TIntegerField
      FieldName = 'CODCONTRIB'
      Origin = 'CODCONTRIB'
    end
    object qry_movtoTIPO_LANCTO: TIntegerField
      FieldName = 'TIPO_LANCTO'
      Origin = 'TIPO_LANCTO'
    end
    object qry_movtoVLR_ENTRADA: TFMTBCDField
      FieldName = 'VLR_ENTRADA'
      Origin = 'VLR_ENTRADA'
      Precision = 18
      Size = 2
    end
    object qry_movtoVLR_SAIDA: TFMTBCDField
      FieldName = 'VLR_SAIDA'
      Origin = 'VLR_SAIDA'
      Precision = 18
      Size = 2
    end
    object qry_movtoSALDO_FINAL: TFMTBCDField
      FieldName = 'SALDO_FINAL'
      Origin = 'SALDO_FINAL'
      Precision = 18
      Size = 2
    end
    object qry_movtoNAT_SLD_FINAL: TStringField
      FieldName = 'NAT_SLD_FINAL'
      Origin = 'NAT_SLD_FINAL'
      Size = 8
    end
    object qry_movtoCNPJ_CLIFOR: TStringField
      FieldName = 'CNPJ_CLIFOR'
      Origin = 'CNPJ_CLIFOR'
    end
    object qry_movtoDUPL_NRO: TIntegerField
      FieldName = 'DUPL_NRO'
      Origin = 'DUPL_NRO'
    end
    object qry_movtoDUPL_FLG_DC: TStringField
      FieldName = 'DUPL_FLG_DC'
      Origin = 'DUPL_FLG_DC'
      FixedChar = True
      Size = 1
    end
    object qry_movtoCC_CUSTO: TStringField
      FieldName = 'CC_CUSTO'
      Origin = 'CC_CUSTO'
      Size = 10
    end
  end
  object DS_movto: TDataSource
    DataSet = qry_movto
    Left = 241
    Top = 8
  end
end
