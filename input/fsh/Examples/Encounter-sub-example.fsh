Instance: AshdodEncounterSubExample
InstanceOf: AsutaAshdodEncounterSub
Usage: #example
Title: "Asuta Ashdod Sub Encounter Example"
Description: "Valid example of an inpatient care segment encounter at Asuta Ashdod"

* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #encounterInformation
* meta.security[HDP].display = "ביקורים"

* identifier[adm].system = "http://fhir.ashmc.co.il/identifier/medical-record"
* identifier[adm].value = "MR-ADM-98765"
* identifier[adm].type.coding[strong].system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier[adm].type.coding[strong].code = #strong-id
* identifier[adm].type.coding[strong].display = "Strong Identifier"
* identifier[adm].type.coding[adm-strong].system = "http://fhir.ashmc.co.il/cs/local-identifier-type"
* identifier[adm].type.coding[adm-strong].code = #adm
* identifier[adm].type.coding[adm-strong].display = "admission"

* identifier[followup].system = "http://fhir.ashmc.co.il/identifier/medical-record"
* identifier[followup].value = "MR-FU-12345"
* identifier[followup].type.coding.system = "http://fhir.ashmc.co.il/cs/local-identifier-type"
* identifier[followup].type.coding.code = #followup
* identifier[followup].type.coding.display = "Followup"

* status = #in-progress

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* class.display = "inpatient encounter"

* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp

* serviceType.coding.system = "http://snomed.info/sct"
* serviceType.coding.code = #394579002
* serviceType.coding.display = "Cardiology"

* subject = Reference(Patient/ashmc-patient-001)
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit"
* subject.identifier.value = "123456789"

* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[primary-performer].type.coding.code = #PPRF
* participant[primary-performer].type.coding.display = "primary performer"
* participant[primary-performer].individual = Reference(Practitioner/ashmc-dr-cohen)

* period.start = "2025-03-15T09:00:00+02:00"

* location[nursing-unit].location = Reference(Location/ashmc-ward-3a)
* location[nursing-unit].status = #active
* location[nursing-unit].physicalType.coding.system = "http://fhir.health.gov.il/cs/il-core-location-physical-type"
* location[nursing-unit].physicalType.coding.code = #hospital-nursing-unit
* location[nursing-unit].physicalType.coding.display = "Hospital nursing unit"

* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-id"
* serviceProvider.identifier.value = "DEPT-CARDIO"

* partOf = Reference(Encounter/AshdodEncounterMainExample)
