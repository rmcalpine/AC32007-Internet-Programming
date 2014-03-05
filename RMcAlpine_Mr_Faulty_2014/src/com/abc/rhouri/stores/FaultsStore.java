package com.abc.rhouri.stores;

public class FaultsStore {

	/*I have edited these so that they work with the code I have on the reporter.jsp page */
	/* The methods have been renamed from the original ones */
	
	private String FaultID; //The fault ID (PK).
    private String ShortDescription; //The short description of the fault.
    private String LongDescription;; //The longer, more detailed description of the fault.
    private String Severity; //The severity of the fault, based on the radio buttons.
    private String RandomID; //The ID of the Fault
	
    public FaultsStore(){

	}

    /* Set methods */
    
	public void setFaultID(String fid){
		FaultID=fid;
	}

	public void setFaultShortDescription(String sdes){
		ShortDescription=sdes;
	}
	
	public void setFaultLongDescription(String ldes){
		LongDescription=ldes;
	}
	
	public void setRandomID(String randomfield){
		RandomID=randomfield;
	}
	
	public void setSeverity(String sev){
		Severity=sev;
	}
	
	/* Get methods */
	

	public String getFaultID(){
		return FaultID;
	}

	public String getShortDescription(){
		return ShortDescription;
	}
	
	public String getLongDescription(){
		return LongDescription;
	}
	
	public String getSeverity(){
		return Severity;
	}
	
	public String getRandomID(){
	     return RandomID;
	}
}