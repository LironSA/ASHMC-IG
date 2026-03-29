Profile: AsutaAshdodEncounterMain
Parent: ILHDPEncounterHospitalization
Id: asuta-ashdod-encounter-main
Title: "Asuta Ashdod Encounter Main Profile"
Description: "Asuta Ashdod top-level hospitalization encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-main"
* ^status = #draft

* meta.profile[1] = "http://fhir.ashmc.co.il/StructureDefinition/encounter-main"
* extension[mode-of-arrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh"
* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no"
* identifier.type ^alias = "חשוב למזהה החזק"
* identifier.type.coding 1..1
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"
* code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type[hospitalization].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* serviceType.extension contains dar 1..1
* serviceType.extension[dar].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* serviceType.extension[dar].valueCode = #unknown
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit"
* reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode contains ashmc 0..*
* reasonCode[ashmc].coding 0..*
* reasonCode[ashmc].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode[ashmc].coding.code from http://fhir.health.gov.il/ValueSet/patient-visit-reason-moh (required)
* reasonCode[ashmc].coding.display 0..1
* serviceProvider.reference = "Organization/HOSP.100"
