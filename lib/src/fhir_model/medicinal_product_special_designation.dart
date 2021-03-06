import 'extension.dart';
import 'fhir_object_factory.dart';
import 'identifier.dart';
import 'codeable_concept.dart';
import 'reference.dart';
import 'element.dart';
/// Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
class MedicinalProductSpecialDesignation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Identifier for the designation, or procedure number.
    List<Identifier> identifier;
    /// The type of special designation, e.g. orphan drug, minor use.
    CodeableConcept type;
    /// The intended use of the product, e.g. prevention, treatment.
    CodeableConcept intendedUse;
    /// Condition for which the medicinal use applies.
    CodeableConcept indicationCodeableConcept;
    /// Condition for which the medicinal use applies.
    Reference indicationReference;
    /// For example granted, pending, expired or withdrawn.
    CodeableConcept status;
    /// Date when the designation was granted.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Animal species for which this applies.
    CodeableConcept species;
 
    MedicinalProductSpecialDesignation.fromJSON( Map json ){
        this.id = json['id'];
        this.extension = List<Extension>();
        if (json['extension'] != null && json['extension'].length > 0) {
          if( json['extension'] is List ){
            json['extension'].forEach((i){
              this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['extension'];
            this.extension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
          }          
        }
        this.modifierExtension = List<Extension>();
        if (json['modifierExtension'] != null && json['modifierExtension'].length > 0) {
          if( json['modifierExtension'] is List ){
            json['modifierExtension'].forEach((i){
              this.modifierExtension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modifierExtension'];
            this.modifierExtension.add(FHIRObjectFactory.buildFromJSON('Extension', i));
          }          
        }
        this.identifier = List<Identifier>();
        if (json['identifier'] != null && json['identifier'].length > 0) {
          if( json['identifier'] is List ){
            json['identifier'].forEach((i){
              this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['identifier'];
            this.identifier.add(FHIRObjectFactory.buildFromJSON('Identifier', i));
          }          
        }
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.intendedUse = json['intendedUse'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['intendedUse']);
        this.indicationCodeableConcept = json['indicationCodeableConcept'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['indicationCodeableConcept']);
        this.indicationReference = json['indicationReference'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['indicationReference']);
        this.status = json['status'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['status']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.species = json['species'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['species']);
    }
}
