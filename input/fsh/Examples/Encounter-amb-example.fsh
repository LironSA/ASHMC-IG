Instance: AshdodEncounterAmbExample
InstanceOf: AsutaAshdodEncounterAmb
Usage: #example
Title: "Asuta Ashdod Ambulatory Encounter Example"
Description: "Valid example of a community/HMO ambulatory encounter at Asuta Ashdod"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #encounterInformation
* meta.security[HDP].display = "ביקורים"

* extension[modeOfArrival].url = "http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival"
* extension[modeOfArrival].valueCoding.system = "http://fhir.health.gov.il/cs/patient-mode-of-arrival-moh"
* extension[modeOfArrival].valueCoding.code = #10
* extension[modeOfArrival].valueCoding.display = "אמבולנס רגיל"

* identifier.system = "http://fhir.ashmc.co.il/identifier/tafnit-admission-no"
* identifier.value = "AMB-2025-005678"
* identifier.type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier.type.coding.code = #strong-id
* identifier.type.coding.display = "Strong Identifier"

* status = #in-progress

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"

* type[community-hmo-ambulatory].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[community-hmo-ambulatory].coding.code = #community-hmo-ambulatory-hdp

* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #788007007
* serviceType.coding.display = "General practice service"

* subject = Reference(Patient/ashmc-patient-002)
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit"
* subject.identifier.value = "987654321"

* participant.type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant.type.coding.code = #PPRF
* participant.individual = Reference(Practitioner/ashmc-dr-levy)
* participant.extension[dar].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* participant.extension[dar].valueCode = #unknown

* period.start = "2025-03-20T14:30:00+02:00"

* serviceProvider = Reference(Organization/HOSP.100)

* reasonCode[moh-reason-code].coding.system = "http://fhir.health.gov.il/cs/patient-visit-reason-moh"
* reasonCode[moh-reason-code].coding.code = #4
* reasonCode[moh-reason-code].coding.display = "פינוי מד\"א"

* reasonCode[ashmc].coding.system = "http://fhir.ashmc.co.il/cs/visit-reason"
* reasonCode[ashmc].coding.code = #4
* reasonCode[ashmc].coding.display = "פינוי מד\"א"
