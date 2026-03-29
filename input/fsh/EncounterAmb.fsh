Profile: AsutaAshdodEncounterAmb
Parent: ILHDPEncounterCommunityHMOAmbulatory
Id: asuta-ashdod-encounter-amb
Title: "Asuta Ashdod Encounter Ambulatory Profile"
Description: "Asuta Ashdod community/HMO ambulatory encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-amb"
* ^status = #draft

* meta.profile[1] = "http://fhir.ashmc.co.il/StructureDefinition/encounter-amb"
* extension[mode-of-arrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh"
* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no"
* identifier.type ^alias = "חשוב למזהה החזק"
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"
* status = #in-progress
* code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* code.coding.code = #AMB
* code.coding.display = "ambulatory"
* type[community-hmo-ambulatory].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[community-hmo-ambulatory].coding.code = #community-hmo-ambulatory-hdp
* subject.identifier.system 1..1
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit"
* participant.extension contains dar 1..1
* participant.extension[dar].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* participant.extension[dar].valueCode = #unknown
* reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode contains ashmc 0..*
* reasonCode[ashmc].coding 0..*
* reasonCode[ashmc].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode[ashmc].coding.code from http://fhir.health.gov.il/ValueSet/patient-visit-reason-moh (required)
* reasonCode[ashmc].coding.display 0..1
