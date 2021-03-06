//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Main.cpp", MainForm);
USEFORM("Rapoarte.cpp", FormRapoarte);
USEFORM("Redact.cpp", RedactForm);
USEFORM("DataModule.cpp", RedRapListGrup); /* TDataModule: File Type */
USEFORM("AddSpecie.cpp", Form1);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TMainForm), &MainForm);
		Application->CreateForm(__classid(TRedRapListGrup), &RedRapListGrup);
		Application->CreateForm(__classid(TRedactForm), &RedactForm);
		Application->CreateForm(__classid(TFormRapoarte), &FormRapoarte);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
