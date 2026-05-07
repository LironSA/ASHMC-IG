Extension: DocumentSource
Id: ext-document-source
Title: "Ext: Document Source"
Description: "Identifies the originating system of the binary content associated with `DocumentReference.content.attachment`. This extension represents the source system that produced or provided the underlying file (e.g., PACS, LIS, EHR module, or external repository), independent of the system managing the `DocumentReference` resource itself."
* ^url = $extDocumentSource

* insert ConformanceMetadata

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains router 0..1
* valueCodeableConcept.coding[router].system 1..1
* valueCodeableConcept.coding[router].system = "http://fhir.ashmc.co.il/cs/document-router-source"
* valueCodeableConcept.coding[router].code 1..1
* valueCodeableConcept.coding[router].display 0..1
