unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TfrmMain = class(TForm)
    pnlHeader: TPanel;
    imgFile: TImage;
    btnOpenImage: TButton;
    btnClose: TButton;
    ComboBox1: TComboBox;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxltem1: TListBoxItem;
    Panel1: TPanel;
    labelNombre: TLabel;
    labelRuta: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  imagePath : string;
  imageName : string;

implementation

{$R *.fmx}
// Para poder tener acceso a la librerìa para leer rutas de los directorios
uses System.IOUtils;

procedure TfrmMain.btnOpenImageClick(Sender: TObject);
begin
 // Este mètodo carga la imagen en el componente TImage
 imgFile.Bitmap.LoadFromFile(imagePath + PathDelim + imageName);
end;

procedure TfrmMain.ComboBox1Change(Sender: TObject);
var ruta: String;
begin
  imageName := ComboBox1.Selected.Text;

  ruta := TPath.GetDocumentsPath;
  frmMain.labelRuta.Text:=ruta;
  frmMain.labelNombre.Text:=imageName;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //debe ser el mismo nombre del archio del paso 7
  imageName := 'IMG_1105.JPG';
  imageName := 'R.jpeg';
  imageName := 'PAUL.jpg';
  imagePath := TPath.GetDocumentsPath;
end;

end.
