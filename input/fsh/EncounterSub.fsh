Profile: AsutaAshdodEncounterSub
Parent: ILHDPEncounterInpatientCareSegment
Id: asuta-ashdod-encounter-sub
Title: "Asuta Ashdod Encounter Sub Profile"
Description: "Asuta Ashdod inpatient care segment encounter profile with local constraints"

* ^url = "http://fhir.ashmc.co.il/StructureDefinition/encounter-sub"
* ^status = #draft

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains 
    adm 0..1 and
    followup 0..1 and
    release 0..1

* identifier[adm] ^alias = "מזהה ביקור בקבלה"
* identifier[adm].system = "http://fhir.ashmc.co.il/identifier/medical-record" (exactly)
* identifier[adm].value 0..1
* identifier[adm].type 0..1
* identifier[adm].type = http://fhir.ashmc.co.il/cs/local-identifier-type#adm
* identifier[adm].type.coding ^slicing.discriminator.type = #pattern
* identifier[adm].type.coding ^slicing.discriminator.path = "$this"
* identifier[adm].type.coding ^slicing.rules = #open
* identifier[adm].type.coding contains 
    strong 1..1 and
    adm-strong 1..1
* identifier[adm].type.coding[strong] ^alias = "סוג מזהה - חזק"
* identifier[adm].type.coding[strong].system 1..1
* identifier[adm].type.coding[strong] = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* identifier[adm].type.coding[strong].code 1..1
* identifier[adm].type.coding[strong].code = #strong-id (exactly)
* identifier[adm].type.coding[strong].display 1..1
* identifier[adm].type.coding[strong].display = "Strong Identifier" (exactly)
* identifier[adm].type.coding[adm-strong] ^alias = "סוג מזהה - קבלה"
* identifier[adm].type.coding[adm-strong].system 1..1
* identifier[adm].type.coding[adm-strong] = http://fhir.ashmc.co.il/cs/local-identifier-type#adm
* identifier[adm].type.coding[adm-strong].code 1..1
* identifier[adm].type.coding[adm-strong].code = #adm (exactly)
* identifier[adm].type.coding[adm-strong].display 1..1
* identifier[adm].type.coding[adm-strong].display = "admission" (exactly)

* identifier[followup] ^alias = "מזהה ביקור באשפוז"
* identifier[followup].system = "http://fhir.ashmc.co.il/identifier/medical-record" (exactly)
* identifier[followup].value 0..1
* identifier[followup].type 0..1
* identifier[followup].type = http://fhir.ashmc.co.il/cs/local-identifier-type#followup
* identifier[followup].type.coding 1..1
* identifier[followup].type.coding ^alias = "סוג מזהה - אשפוז"
* identifier[followup].type.coding.system 1..1
* identifier[followup].type.coding.system = "http://fhir.ashmc.co.il/cs/local-identifier-type" (exactly)
* identifier[followup].type.coding.code 1..1
* identifier[followup].type.coding.code = #followup (exactly)
* identifier[followup].type.coding.display 1..1
* identifier[followup].type.coding.display = "Followup" (exactly)

* identifier[release].system = "http://fhir.ashmc.co.il/identifier/medical-record" (exactly)
* identifier[release].value 0..1
* identifier[release].type 0..1
* identifier[release].type = http://fhir.ashmc.co.il/cs/local-identifier-type#release
* identifier[release].type.coding 1..1
* identifier[release].type.coding.system 1..1
* identifier[release].type.coding.system = "http://fhir.ashmc.co.il/cs/local-identifier-type" (exactly)
* identifier[release].type.coding.code 1..1
* identifier[release].type.coding.code = #release (exactly)
* identifier[release].type.coding.display 1..1
* identifier[release].type.coding.display = "Release" (exactly)

* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* type[inpatient-care-segment].coding.system = "http://fhir.health.gov.il/cs/il-core-encounter-type" (exactly)
* type[inpatient-care-segment].coding.code = #inpatient-care-segment-hdp (exactly)
* subject.identifier.system 1..1
* subject.identifier.system = "http://fhir.ashmc.co.il/identifier/pat-id-tafnit" (exactly)
* subject.identifier.value 1..1
* participant[primary-performer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[primary-performer].type.coding.code = #PPRF (exactly)
* participant[primary-performer].type.coding.display = "primary performer" (exactly)
* location[nursing-unit].physicalType.coding.system = "http://fhir.health.gov.il/cs/il-core-location-physical-type" (exactly)
* location[nursing-unit].physicalType.coding.code = #hospital-nursing-unit (exactly)
* location[nursing-unit].physicalType.coding.display = "Hospital nursing unit" (exactly)
* serviceProvider.identifier.system = "http://fhir.ashmc.co.il/identifier/cml-id" (exactly)
* serviceProvider.identifier.value 0..1
* insert ConformanceMetadata