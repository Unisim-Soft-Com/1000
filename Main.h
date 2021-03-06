//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu1;
	TMenuItem *Redactare;
	TMenuItem *File1;
	TMenuItem *Inchide;
	TMenuItem *ListaSpecii1;
	TMenuItem *RedactareProbe1;
	TMenuItem *Rapoarte1;
	TPanel *PnListSpecii;
	TDBGrid *DBGLista;
	TDBGrid *DBGGrupa;
	TPanel *PnRedactProbe;
	TDBGrid *DBGSpecii;
	TDBGrid *DBGObiectivAcvatic;
	TDBGrid *DBGSectoare;
	TDBGrid *DBGProbe;
	TLabel *Label1;
	TLabel *Label2;
	TPanel *PnAddSpecie;
	TDBGrid *DBGrid1;
	TEdit *Edit2;
	TEdit *Edit3;
	TButton *Button2;
	TButton *PnAddSpOk;
	TButton *PnAddSpCancel;
	TButton *PnListSpeciiX;
	TButton *PnRedactProbX;
	TEdit *Edit1;
	TLabel *Label3;
	TButton *Button1;
	TEdit *Edit4;
	TLabel *Label4;
	TLabel *Label5;
	TEdit *Edit5;
	TEdit *Edit6;
	TLabel *Label6;
	TButton *Button3;
	TLabel *Label7;
	TEdit *Edit7;
	TEdit *Edit8;
	TLabel *Label8;
	TButton *Button4;
	TLabel *Label9;
	TLabel *Label10;
	TButton *Button5;
	TButton *Button6;
	TButton *Button7;
	TButton *Button8;
	TButton *Button9;
	TButton *Button10;
	TPanel *PnAddOA;
	TDBGrid *DBGrid2;
	TButton *Button14;
	TButton *Button15;
	TPanel *PnAddSector;
	TDBGrid *DBGrid3;
	TButton *Button16;
	TButton *Button17;
	TPanel *PnAddProbe_H;
	TDBGrid *DBGrid4;
	TButton *Button18;
	TButton *Button19;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TTimer *Timer1;
	TMenuItem *otalRecalcul1;
	TMenuItem *NSPNB1;
	TMenuItem *ListeaSpecdealge1;
	TMenuItem *Indecelesaprobic1;
	TButton *Button12;
	TButton *Button13;
	TButton *Button11;
	TButton *Button20;
	TButton *Button21;
	TButton *Button22;
	void __fastcall InchideClick(TObject *Sender);
	void __fastcall ListaSpecii1Click(TObject *Sender);
	void __fastcall RedactareProbe1Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBGSpeciiDblClick(TObject *Sender);
	void __fastcall PnAddSpCancelClick(TObject *Sender);
	void __fastcall DBGrid1DblClick(TObject *Sender);
	void __fastcall PnAddSpOkClick(TObject *Sender);
	void __fastcall PnRedactProbXClick(TObject *Sender);
	void __fastcall PnListSpeciiXClick(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button10Click(TObject *Sender);
	void __fastcall Button8Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button9Click(TObject *Sender);
	void __fastcall Button15Click(TObject *Sender);
	void __fastcall Button14Click(TObject *Sender);
	void __fastcall Button16Click(TObject *Sender);
	void __fastcall Button17Click(TObject *Sender);
	void __fastcall Button11Click(TObject *Sender);
	void __fastcall Button12Click(TObject *Sender);
	void __fastcall Button13Click(TObject *Sender);
	void __fastcall Button18Click(TObject *Sender);
	void __fastcall Button19Click(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall Rapoarte1Click(TObject *Sender);
	void __fastcall Button22Click(TObject *Sender);
	void __fastcall Button20Click(TObject *Sender);
	void __fastcall Button21Click(TObject *Sender);
	void __fastcall DBGSpeciiKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);


private:	// User declarations
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
