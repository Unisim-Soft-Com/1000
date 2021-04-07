//---------------------------------------------------------------------------

#ifndef DataModuleH
#define DataModuleH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Data.Win.ADODB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Datasnap.Provider.hpp>
#include <Data.DB.hpp>
//---------------------------------------------------------------------------
class TRedRapListGrup : public TDataModule
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection1;
	TADODataSet *QRedRapListGrup;
	TDataSource *DSRedRapListGrup;
	TADODataSet *QRedRapListaSpec;
	TDataSource *DSRedRapListaSpec;
	TADODataSet *QObiectAcvatic;
	TDataSource *DSObiectAcvatic;
	TDataSource *DSSectoare;
	TADODataSet *QProbe_H;
	TDataSource *DSProbe_H;
	TADODataSet *QSpecii;
	TDataSource *DSSpecii;
	TADODataSet *QAddSpecie;
	TDataSource *DSAddSpecie;
	TADODataSet *QSectoare;
private:	// User declarations
public:		// User declarations
	__fastcall TRedRapListGrup(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRedRapListGrup *RedRapListGrup;
//---------------------------------------------------------------------------
#endif
