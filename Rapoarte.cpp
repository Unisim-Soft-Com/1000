//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Rapoarte.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormRapoarte *FormRapoarte;
//---------------------------------------------------------------------------
__fastcall TFormRapoarte::TFormRapoarte(TComponent* Owner)
	: TForm(Owner)
{
}

//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::FormShow(TObject *Sender)
{
	Panel1 -> Top  = 80;
	Panel1 -> Left = 10;
	Panel1 -> Width  = FormRapoarte -> Width  - 40;
	Panel1 -> Height = FormRapoarte -> Height - 120;
	Panel2 -> Top  = 80;
	Panel2 -> Left = 10;
	Panel2 -> Width  = FormRapoarte -> Width  - 40;
	Panel2 -> Height = FormRapoarte -> Height - 120;
	Panel3 -> Top  = 80;
	Panel3 -> Left = 10;
	Panel3 -> Width  = FormRapoarte -> Width  - 40;
	Panel3 -> Height = FormRapoarte -> Height - 120;
	Panel4 -> Top  = 80;
	Panel4 -> Left = 10;
	Panel4 -> Width  = FormRapoarte -> Width  - 40;
	Panel4 -> Height = FormRapoarte -> Height - 120;
	Panel1 -> Enabled = true;
	Panel2 -> Enabled = false;
	Panel3 -> Enabled = false;
	Panel4 -> Enabled = false;
	Panel1 -> Visible = true;
	Panel2 -> Visible = false;
	Panel3 -> Visible = false;
	Panel4 -> Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BtNextClick(TObject *Sender)
{
if (BitBtn3 ->Enabled == true && BitBtn4 ->Enabled == false)
	{
		BitBtn4 ->Enabled = True;
		Panel1 -> Enabled = false;
		Panel2 -> Enabled = false;
		Panel3 -> Enabled = false;
		Panel4 -> Enabled = true;

		Panel1 -> Visible = false;
		Panel2 -> Visible = false;
		Panel3 -> Visible = false;
		Panel4 -> Visible = true;
	}
if (BitBtn2 ->Enabled == true && BitBtn3 ->Enabled == false)
	{
		BitBtn3 ->Enabled = True;
		Panel1 -> Enabled = false;
		Panel2 -> Enabled = false;
		Panel3 -> Enabled = true;
		Panel4 -> Enabled = false;

		Panel1 -> Visible = false;
		Panel2 -> Visible = false;
		Panel3 -> Visible = true;
		Panel4 -> Visible = false;
	}
if (BitBtn1 ->Enabled == true && BitBtn2 ->Enabled == false)
	{
		BitBtn2 ->Enabled = True;
		Panel1 -> Enabled = false;
		Panel2 -> Enabled = true;
		Panel3 -> Enabled = false;
		Panel4 -> Enabled = false;

		Panel1 -> Visible = false;
		Panel2 -> Visible = true;
		Panel3 -> Visible = false;
		Panel4 -> Visible = false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BtBackClick(TObject *Sender)
{
if (BitBtn3 ->Enabled == false && BitBtn2 ->Enabled == true)
	{
		BitBtn2 ->Enabled = false;

		Panel1 -> Enabled = true;
		Panel2 -> Enabled = false;
		Panel3 -> Enabled = false;
		Panel4 -> Enabled = false;

		Panel1 -> Visible = true;
		Panel2 -> Visible = false;
		Panel3 -> Visible = false;
		Panel4 -> Visible = false;
	}
if (BitBtn4 ->Enabled == false && BitBtn3 ->Enabled == true)
	{
		BitBtn3 ->Enabled = false;

		Panel1 -> Enabled = false;
		Panel2 -> Enabled = true;
		Panel3 -> Enabled = false;
		Panel4 -> Enabled = false;

		Panel1 -> Visible = false;
		Panel2 -> Visible = true;
		Panel3 -> Visible = false;
		Panel4 -> Visible = false;
	}
if (BitBtn4 ->Enabled)
	{
		BitBtn4 ->Enabled = false;

		Panel1 -> Enabled = false;
		Panel2 -> Enabled = false;
		Panel3 -> Enabled = true;
		Panel4 -> Enabled = false;

		Panel1 -> Visible = false;
		Panel2 -> Visible = false;
		Panel3 -> Visible = true;
		Panel4 -> Visible = false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BtResetClick(TObject *Sender)
{
	 Panel1 -> Enabled = true;
	 BitBtn2 ->Enabled = false;
	 BitBtn3 ->Enabled = false;
	 BitBtn4 ->Enabled = false;

	 Panel1 -> Visible = true;
	 Panel2 -> Visible = false;
	 Panel3 -> Visible = false;
	 Panel4 -> Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BitBtn1Click(TObject *Sender)
{
	 BitBtn2 ->Enabled = false;
	 BitBtn3 ->Enabled = false;
	 BitBtn4 ->Enabled = false;

	 Panel1 -> Enabled = true;
	 BitBtn2 ->Enabled = false;
	 BitBtn3 ->Enabled = false;
	 BitBtn4 ->Enabled = false;

	 Panel1 -> Visible = true;
	 Panel2 -> Visible = false;
	 Panel3 -> Visible = false;
	 Panel4 -> Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BitBtn2Click(TObject *Sender)
{
	 BitBtn3 ->Enabled = false;
	 BitBtn4 ->Enabled = false;

	 Panel1 -> Enabled = false;
	 Panel2 -> Enabled = true;
	 Panel3 -> Enabled = false;
	 Panel4 -> Enabled = false;

	 Panel1 -> Visible = false;
	 Panel2 -> Visible = true;
	 Panel3 -> Visible = false;
	 Panel4 -> Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BitBtn3Click(TObject *Sender)
{
	 BitBtn4 ->Enabled = false;

	 Panel1 -> Enabled = false;
	 Panel2 -> Enabled = false;
	 Panel3 -> Enabled = true;
	 Panel4 -> Enabled = false;

	 Panel1 -> Visible = false;
	 Panel2 -> Visible = false;
	 Panel3 -> Visible = true;
	 Panel4 -> Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::BitBtn4Click(TObject *Sender)
{
	 Panel1 -> Enabled = false;
	 Panel2 -> Enabled = false;
	 Panel3 -> Enabled = false;
	 Panel4 -> Enabled = true;

	 Panel1 -> Visible = false;
	 Panel2 -> Visible = false;
	 Panel3 -> Visible = false;
	 Panel4 -> Visible = true;
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::P1CalcN1Click(TObject *Sender)
{
/*
PROC R_NR1(Edit1.Text) ;
*/
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::P2CalcN2Click(TObject *Sender)
{
/*
PROC R_NR2;
*/
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::P2CalcN3Click(TObject *Sender)
{
/*
PROC R_NR3;
*/
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::P3Bt1Click(TObject *Sender)
{
/*
PROC R_NR4;
*/
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::P4DoItClick(TObject *Sender)
{
/*
PROC R_NR5;
*/
}
//---------------------------------------------------------------------------
void __fastcall TFormRapoarte::Button5Click(TObject *Sender)
{
/*
PROC R_NR6;
*/
}
//---------------------------------------------------------------------------
