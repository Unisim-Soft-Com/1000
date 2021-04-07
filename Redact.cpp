//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Redact.h"
#include "DataModule.h"
#include "AddSpecie.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRedactForm *RedactForm;
//---------------------------------------------------------------------------
__fastcall TRedactForm::TRedactForm(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TRedactForm::FormCreate(TObject *Sender)
{
	PnRedactProbe -> Left = 8;
	PnListSpecii  -> Left = 8;
	PnRedactProbe -> Height = 640;
	PnListSpecii  -> Height = 640;
}
//---------------------------------------------------------------------------
void __fastcall TRedactForm::BtListSpeciiClick(TObject *Sender)
{
	PnRedactProbe -> Visible = false;
	PnListSpecii  -> Visible = true;
}
//---------------------------------------------------------------------------
void __fastcall TRedactForm::BtRedactProbeClick(TObject *Sender)
{
	PnRedactProbe -> Visible = true;
	PnListSpecii  -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TRedactForm::DBGProbeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	//DBGProbe -> Locate("COD",)
}
//---------------------------------------------------------------------------

void __fastcall TRedactForm::Button1Click(TObject *Sender)
{
	//TLocateOptions SearchOptions;
	//Variant locvalues[] = {Edit1->Text};
	//DBGProbe -> DSProbe_H -> QProbe_H
	//		-> Locate("COD", VarArrayOf (locvalues,2), SearchOptions<<loPartialKey<<loCaseInsensitive);

}
//---------------------------------------------------------------------------

void __fastcall TRedactForm::DBGSpeciiDblClick(TObject *Sender)
{
	AddSpecieForm -> ShowModal();
}
//---------------------------------------------------------------------------

