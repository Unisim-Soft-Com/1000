//---------------------------------------------------------------------------

#ifndef AddSpecieH
#define AddSpecieH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TAddSpecieForm : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *DBGrid1;
	TEdit *Edit1;
	TEdit *Edit2;
	TButton *Button1;
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TAddSpecieForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAddSpecieForm *AddSpecieForm;
//---------------------------------------------------------------------------
#endif
