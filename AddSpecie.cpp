//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "AddSpecie.h"
#include "DataModule.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAddSpecieForm *AddSpecieForm;
//---------------------------------------------------------------------------
__fastcall TAddSpecieForm::TAddSpecieForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TAddSpecieForm::Button1Click(TObject *Sender)
{
	//TLocateOptions SearchOptions;
	//Variant locvalues[] = {Edit1->Text};
	//DBGProbe -> DSProbe_H -> QProbe_H
	//		-> Locate("COD", VarArrayOf (locvalues,2), SearchOptions<<loPartialKey<<loCaseInsensitive);
}
//---------------------------------------------------------------------------

