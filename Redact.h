//---------------------------------------------------------------------------

#ifndef RedactH
#define RedactH
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
//---------------------------------------------------------------------------
class TRedactForm : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *DBGLista;
	TPanel *PnListSpecii;
	TDBGrid *DBGGrupa;
	TButton *BtRedactProbe;
	TButton *BtListSpecii;
	TPanel *PnRedactProbe;
	TDBGrid *DBGSpecii;
	TDBGrid *DBGObiectivAcvatic;
	TDBNavigator *DBNavigator2;
	TDBGrid *DBGSectoare;
	TDBGrid *DBGProbe;
	TEdit *Edit1;
	TButton *Button1;
	TDBNavigator *DBNavigator3;
	TDBNavigator *DBNavigator4;
	TDBNavigator *DBNavigator5;
	void __fastcall BtListSpeciiClick(TObject *Sender);
	void __fastcall BtRedactProbeClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall DBGProbeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall DBGSpeciiDblClick(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TRedactForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRedactForm *RedactForm;
//---------------------------------------------------------------------------
#endif
