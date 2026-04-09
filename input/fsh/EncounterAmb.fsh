Profile: AsutaAshdodEncounterAmb
Parent: ILHDPEncounterCommunityHMOAmbulatory
Id: asuta-ashdod-encounter-amb
Title: "Asuta Ashdod Encounter Ambulatory Profile"
Description: "Asuta Ashdod community/HMO ambulatory encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-amb"
* ^status = #draft

* extension[modeOfArrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh" (exactly)
* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no" (exactly)
* identifier.type ^alias = "חשוב למזהה החזק"
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type" (exactly)
* identifier.type.coding.code = #strong-id (exactly)
* identifier.type.coding.display = "Strong Identifier" (exactly)
* status = #in-progress (exactly)
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.code = #AMB (exactly)
* class.display = "ambulatory" (exactly)
* type[community-hmo-ambulatory].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type" (exactly)
* type[community-hmo-ambulatory].coding.code = #community-hmo-ambulatory-hdp (exactly)
* subject.identifier.system 1..1
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit" (exactly)
* participant.extension contains $dar named dar 1..1
* participant.extension[dar].url = $dar (exactly)
* participant.extension[dar].valueCode = #unknown (exactly)
* reasonCode ^slicing.discriminator.type = #pattern
* reasonCode ^slicing.discriminator.path = "$this"
* reasonCode ^slicing.rules = #open
* reasonCode contains 
    ashmc 0..* 
    // moh-reason-code 0..*
* reasonCode[ashmc].coding.system 1..1
* reasonCode[ashmc] ^patternCodeableConcept.coding.system = "http://fhir.ashmc.co.il/cs/visit-reason"
* reasonCode[moh-reason-code] ^patternCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
// * reasonCode[ashmc].coding.system = "http://fhir.ashmc.co.il/cs/visit-reason" (exactly)
// * reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh" (exactly)
// * reasonCode[ashmc].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh" (exactly)
// * reasonCode[ashmc].coding.code from http://fhir.health.gov.il/ValueSet/patient-visit-reason-moh (required)
* reasonCode[ashmc].coding.display 0..1
* insert ConformanceMetadata
