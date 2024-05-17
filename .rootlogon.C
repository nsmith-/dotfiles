{
  if ( gSystem->Getenv("CMSSW_BASE") != 0 ) {
    // Provides access to methods in CMSSW framework
    if ( TString(gSystem->Getenv("CMSSW_VERSION")).Contains("CMSSW_7") ) {
      gSystem->Load("libFWCoreFWLite.so");
      gROOT->ProcessLineSync("AutoLibraryLoader::enable();");
    } else {
      gSystem->Load("libDataFormatsFWLite.so");
      gROOT->ProcessLineSync("FWLiteEnabler::enable();");
    }
  }
}
