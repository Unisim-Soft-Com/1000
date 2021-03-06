//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include <windows.h>

#include "Main.h"
#include "DataModule.h"
#include "Redact.h"
#include "Rapoarte.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;

AnsiString TimeClStr = "22:00";
TDateTime TimeClose(TimeClStr);
int Aminare = 0;
int Interval_Time = 5000;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::InchideClick(TObject *Sender)
{
	MainForm -> Close();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ListaSpecii1Click(TObject *Sender)
{
	PnListSpecii -> Visible = true;
	PnListSpecii -> BringToFront();
}
//---------------------------------------------------------------------------

void  TMainForm::RedactareProbe1Click(TObject *Sender)
{
	PnRedactProbe -> Visible = true;
	PnRedactProbe -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::FormShow(TObject *Sender)
{
	  PnListSpecii -> Top = 10;
	  PnListSpecii -> Left = 10;
	  PnListSpecii -> Width = MainForm -> Width - 40;
	  PnListSpecii -> Height = MainForm -> Height - 100;
	  PnRedactProbe -> Top = 10;
	  PnRedactProbe -> Left = 10;
	  PnRedactProbe -> Width = MainForm -> Width - 40;
	  PnRedactProbe -> Height = MainForm -> Height - 100;
	  PnAddSpecie -> Top = 90;
	  PnAddSpecie -> Left = 130;
	  PnAddOA -> Top = 90;
	  PnAddOA -> Left = 130;
	  PnAddSector -> Top = 90;
	  PnAddSector -> Left = 130;
	  PnAddProbe_H -> Top = 90;
	  PnAddProbe_H -> Left = 130;

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DBGSpeciiDblClick(TObject *Sender)
{
	PnAddSpecie -> Visible = true;
	PnAddSpecie -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::PnAddSpCancelClick(TObject *Sender)
{
	PnAddSpecie -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DBGrid1DblClick(TObject *Sender)
{
	//PnAddSpOk -> OkClick();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::PnAddSpOkClick(TObject *Sender)
{
	PnAddSpecie -> Visible = false;
    //RedRapListGrup -> QSpecii ->UpdateAction()
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::PnRedactProbXClick(TObject *Sender)
{
	PnRedactProbe -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::PnListSpeciiXClick(TObject *Sender)
{
	PnListSpecii -> Visible = false;
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Button2Click(TObject *Sender)
{
	TLocateOptions Opts;
	Opts.Clear();
	Opts << loPartialKey << loCaseInsensitive;
	if (Trim(Edit2 -> Text) != "")
	{
		RedRapListGrup -> QAddSpecie -> Locate("COD_N",Edit2->Text,Opts);
	}
	else
	{   if (Trim(Edit3 -> Text) != "")
		{
			RedRapListGrup -> QAddSpecie -> Locate("DENUMIREA",Edit3->Text,Opts);
		}
		else
		{
			RedRapListGrup -> QAddSpecie -> First();
		}
	}


}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Button4Click(TObject *Sender)
{
	TLocateOptions Opts;
	Opts.Clear();
	Opts << loPartialKey << loCaseInsensitive;
	if (Trim(Edit7 -> Text) != "")
		{
			RedRapListGrup -> QProbe_H -> Locate("COD",Edit7->Text,Opts);
		}
		else
		{
			RedRapListGrup -> QProbe_H -> First();
		}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button3Click(TObject *Sender)
{

	TLocateOptions Opts;
	Opts.Clear();
	Opts << loPartialKey << loCaseInsensitive;
	if (Trim(Edit5 -> Text) != "")
	{
		RedRapListGrup -> QSectoare -> Locate("COD",Edit5->Text,Opts);
	}
	else
	{
		if (Trim(Edit6 -> Text) != "")
		{
			RedRapListGrup -> QSectoare -> Locate("DENUMIREA",Edit6->Text,Opts);
		}
		else
		{
			RedRapListGrup -> QSectoare -> First();
		}
	}

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button1Click(TObject *Sender)
{

	TLocateOptions Opts;
	Opts.Clear();
	Opts << loPartialKey << loCaseInsensitive;
	if (Trim(Edit1 -> Text) != "")
	{
		RedRapListGrup -> QObiectAcvatic -> Locate("COD",Edit1->Text,Opts);
	}
	else
	{
		if (Trim(Edit4 -> Text) != "")
		{
			RedRapListGrup -> QObiectAcvatic -> Locate("DENUMIREA",Edit4->Text,Opts);
		}
		else
		{
		   	RedRapListGrup -> QObiectAcvatic -> First();
		}
	}
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Button5Click(TObject *Sender)
{

	RedRapListGrup -> QObiectAcvatic -> Append();
	PnAddOA -> Visible = true;
	PnAddOA -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button6Click(TObject *Sender)
{
	RedRapListGrup -> QObiectAcvatic -> Edit();
	PnAddOA -> Visible = true;
	PnAddOA -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button7Click(TObject *Sender)
{
	if (MessageDlg("Doriti sa stergeti inregistrarea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
	 {
		RedRapListGrup -> QObiectAcvatic -> Delete();
	  }
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button14Click(TObject *Sender)
{
	RedRapListGrup -> QObiectAcvatic ->UpdateStatus();
	PnAddOA -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button15Click(TObject *Sender)
{
	RedRapListGrup -> QObiectAcvatic -> Cancel();
	PnAddOA -> Visible = false;
}
//---------------------------------------------------------------------------



void __fastcall TMainForm::Button8Click(TObject *Sender)
{
	RedRapListGrup -> QSectoare -> Append();
	PnAddSector -> Visible = true;
	PnAddSector -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button10Click(TObject *Sender)
{
	if (MessageDlg("Doriti sa stergeti inregistrarea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
	{
		RedRapListGrup -> QSectoare -> Delete();
	}

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button9Click(TObject *Sender)
{
	RedRapListGrup -> QSectoare -> Edit();
	PnAddSector -> Visible = true;
	PnAddSector -> BringToFront();
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Button16Click(TObject *Sender)
{
	RedRapListGrup -> QSectoare -> UpdateStatus();
	PnAddSector -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button17Click(TObject *Sender)
{
	RedRapListGrup -> QSectoare -> Cancel();
	PnAddSector -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button11Click(TObject *Sender)
{
	RedRapListGrup -> QProbe_H -> Append();
	PnAddSector -> Visible = true;
	PnAddSector -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button12Click(TObject *Sender)
{
	RedRapListGrup -> QProbe_H -> Edit();
	PnAddSector -> Visible = true;
	PnAddSector -> BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button13Click(TObject *Sender)
{
	if (MessageDlg("Doriti sa stergeti inregistrarea?", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
	{
		RedRapListGrup -> QProbe_H -> Delete();
	}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button18Click(TObject *Sender)
{
	RedRapListGrup -> QProbe_H -> UpdateStatus();
	PnAddSector -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button19Click(TObject *Sender)
{
	RedRapListGrup -> QProbe_H -> Cancel();
	PnAddSector -> Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Timer1Timer(TObject *Sender)
{
	if (TimeClose>Now())
	{
		if (Aminare == 1)
		{
			Application->Terminate();
		}
		else
		{
			if (Application->Active)
			{
				Aminare = 1;
				if (MessageDlg("Va rugam inchideti aplicatia 1 !", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
				{
					Application->Terminate();
				}
				else
				{
					Aminare = 0;
				}
			}
			else
			{
				Aminare = 1;
				if (MessageDlg("Va rugam inchideti aplicatia 1 !", mtConfirmation, TMsgDlgButtons() << mbYes << mbNo,0) == mrYes)
				{
					Application->Terminate();
				}
				else
				{
					Aminare = 0;
				}
			}
		}
    }
		Timer1 -> Interval = Interval_Time;

}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Rapoarte1Click(TObject *Sender)
{
     FormRapoarte -> ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button22Click(TObject *Sender)
{
   RedRapListGrup -> QSpecii -> Append();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button20Click(TObject *Sender)
{
	RedRapListGrup -> QSpecii -> Edit();

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button21Click(TObject *Sender)
{
	RedRapListGrup -> QSpecii -> Delete();

}
//---------------------------------------------------------------------------




void __fastcall TMainForm::DBGSpeciiKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	if (Key == 13)
	{
		RedRapListGrup -> QSpecii ->Refresh() ;
	}
}
//---------------------------------------------------------------------------

