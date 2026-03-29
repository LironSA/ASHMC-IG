Profile: AsutaAshdodEncounterSub
Parent: ILHDPEncounterInpatientCareSegment
Id: asuta-ashdod-encounter-sub
Title: "Asuta Ashdod Encounter Sub Profile"
Description: "Asuta Ashdod inpatient care segment encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-sub"
* ^status = #draft

* meta.profile[1] = "http://fhir.ashmc.co.il/StructureDefinition/encounter-sub"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding"
* identifier ^slicing.rules = #open
* identifier contains 
    adm 0..1 and
    followup 0..1 and
    release 0..1

* identifier[adm] ^alias = "מזהה ביקור בקבלה"
* identifier[adm].system = "http://fhir.ashmc.co.il/identifier/medical-record"
* identifier[adm].value 0..1
* identifier[adm].type 0..1
* identifier[adm].type.coding ^slicing.discriminator.type = #pattern
* identifier[adm].type.coding ^slicing.discriminator.path = "$this"
* identifier[adm].type.coding ^slicing.rules = #open
* identifier[adm].type.coding contains 
    strong 1..1 and
    adm-strong 1..1
* identifier[adm].type.coding[strong] ^alias = "סוג מזהה - חזק"
* identifier[adm].type.coding[strong].system 1..1
* identifier[adm].type.coding[strong].system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier[adm].type.coding[strong].code 1..1
* identifier[adm].type.coding[strong].code = #strong-id
* identifier[adm].type.coding[strong].display 1..1
* identifier[adm].type.coding[strong].display = "Strong Identifier"
* identifier[adm].type.coding[adm-strong] ^alias = "סוג מזהה - קבלה"
* identifier[adm].type.coding[adm-strong].system 1..1
* identifier[adm].type.coding[adm-strong].system = "http://fhir.ashmc.co.il/cs/local-identifier-type"
* identifier[adm].type.coding[adm-strong].code 1..1
* identifier[adm].type.coding[adm-strong].code = #adm
* identifier[adm].type.coding[adm-strong].display 1..1
* identifier[adm].type.coding[adm-strong].display = "admission"

* identifier[followup] ^alias = "מזהה ביקור באשפוז"
* identifier[followup].system = "http://fhir.ashmc.co.il/identifier/medical-record"
* identifier[followup].value 0..1
* identifier[followup].type 0..1
* identifier[followup].type.coding 1..1
* identifier[followup].type.coding ^alias = "סוג מזהה - אשפוז"
* identifier[followup].type.coding.system 1..1
* identifier[followup].type.coding.system = "http://fhir.ashmc.co.il/cs/local-identifier-type"
* identifier[followup].type.coding.code 1..1
* identifier[followup].type.coding.code = #followup
* identifier[followup].type.coding.display 1..1
* identifier[followup].type.coding.display = "Followup"

* identifier[release].system = "http://fhir.ashmc.co.il/identifier/medical-record"
* identifier[release].value 0..1
* identifier[release].type 0..1
* identifier[release].type.coding 1..1
* identifier[release].type.coding.system 1..1
* identifier[release].type.coding.system = "http://fhir.ashmc.co.il/cs/local-identifier-type"
* identifier[release].type.coding.code 1..1
* identifier[release].type.coding.code = #"release "
* identifier[release].type.coding.display 1..1
* identifier[release].type.coding.display = "Release"

* code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type"
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp
* subject.identifier.system 1..1
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit"
* subject.identifier.value 1..1
* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[primary-performer].type.coding.code = #PPRF
* participant[primary-performer].type.display = "primary performer"
* location[nursing-unit].physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* location[nursing-unit].physicalType.coding.code = #wa
* location[nursing-unit].physicalType.coding.display = "WARD"
* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-id"
* serviceProvider.identifier.value 0..1
