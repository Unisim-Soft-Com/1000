//---------------------------------------------------------------------------

#ifndef RapoarteH
#define RapoarteH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TFormRapoarte : public TForm
{
__published:	// IDE-managed Components
	TBitBtn *BitBtn1;
	TBitBtn *BitBtn2;
	TBitBtn *BitBtn3;
	TBitBtn *BitBtn4;
	TButton *BtNext;
	TButton *BtBack;
	TButton *BtReset;
	TPanel *Panel1;
	TEdit *Edit1;
	TLabel *Label1;
	TButton *P1CalcN1;
	TDBGrid *DBGrid1;
	TPanel *Panel2;
	TDBGrid *DBGrid2;
	TButton *P2CalcN2;
	TButton *P2CalcN3;
	TPanel *Panel3;
	TLabel *Label2;
	TEdit *Edit2;
	TLabel *Label3;
	TEdit *Edit3;
	TLabel *Label4;
	TEdit *Edit4;
	TButton *P3Bt1;
	TPanel *Panel4;
	TButton *P4DoIt;
	TButton *Button5;
	void __fastcall BitBtn1Click(TObject *Sender);
	void __fastcall BtNextClick(TObject *Sender);
	void __fastcall BtBackClick(TObject *Sender);
	void __fastcall BtResetClick(TObject *Sender);
	void __fastcall BitBtn2Click(TObject *Sender);
	void __fastcall BitBtn3Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall BitBtn4Click(TObject *Sender);
	void __fastcall P1CalcN1Click(TObject *Sender);
	void __fastcall P2CalcN2Click(TObject *Sender);
	void __fastcall P2CalcN3Click(TObject *Sender);
	void __fastcall P3Bt1Click(TObject *Sender);
	void __fastcall P4DoItClick(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormRapoarte(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormRapoarte *FormRapoarte;
//---------------------------------------------------------------------------
#endif
