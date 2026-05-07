Instance: AshdodDocumentReferenceExample
InstanceOf: AsutaAshdodDocumentReferenceProfile
Usage: #example
Title: "Asuta Ashdod Document Reference Example"
Description: "Valid example of a DocumentReference at Asuta Ashdod"

// meta.security (from HDP)
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #clinicalNotes
* meta.security[HDP].display = "סיכומים"

// Source extension
* extension[source].valueCodeableConcept.coding[router].system = "http://fhir.ashmc.co.il/cs/document-router-source"
* extension[source].valueCodeableConcept.coding[router].code = #EMR
* extension[source].valueCodeableConcept.coding[router].display = "Electronic Medical Record"

// masterIdentifier
* masterIdentifier.system = "http://fhir.ashmc.co.il/identifier/document-router-versioned-message-id"
* masterIdentifier.value = "msg-v2-2026-00012345"

// status & docStatus
* status = #current
* docStatus = #final

// identifier: router-message-id
* identifier[router-message-id].system = "http://fhir.ashmc.co.il/identifier/document-router-message-id"
* identifier[router-message-id].value = "msg-2026-00012345"

// type with two coding slices
* type.coding[msg-sub-type].system = "http://fhir.ashmc.co.il/identifier/document-message-sub-type"
* type.coding[msg-sub-type].code = #discharge-summary

* type.coding[loinc].system = "http://loinc.org"
* type.coding[loinc].code = #18842-5
* type.coding[loinc].display = "Discharge summary"

// subject
* subject = Reference(Patient/example)

// author
* author = Reference(Practitioner/example)

// date
* date = "2026-05-04T10:30:00+03:00"

// content
* content.attachment.contentType = #application/pdf
* content.attachment.creation = "2026-05-04T10:00:00+03:00"
