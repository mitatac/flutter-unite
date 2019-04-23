import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'identifier.dart';
import 'element.dart';
import 'quantity.dart';
/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecificationMoiety {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Role that the moiety is playing.
    CodeableConcept role;
    /// Identifier by which this moiety substance is known.
    Identifier identifier;
    /// Textual name for this moiety substance.
    String name;
    /// Extensions for name
    Element extName;
    /// Stereochemistry type.
    CodeableConcept stereochemistry;
    /// Optical activity type.
    CodeableConcept opticalActivity;
    /// Molecular formula.
    String molecularFormula;
    /// Extensions for molecularFormula
    Element extMolecularFormula;
    /// Quantitative value for this moiety.
    Quantity amountQuantity;
    /// Extensions for amountString
    Element extAmountString;
 
    SubstanceSpecificationMoiety.fromJSON( Map json ){
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
        this.role = json['role'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['role']);
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
        this.name = json['name'];
        this.extName = json['_name'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_name']);
        this.stereochemistry = json['stereochemistry'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['stereochemistry']);
        this.opticalActivity = json['opticalActivity'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['opticalActivity']);
        this.molecularFormula = json['molecularFormula'];
        this.extMolecularFormula = json['_molecularFormula'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_molecularFormula']);
        this.amountQuantity = json['amountQuantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['amountQuantity']);
        this.extAmountString = json['_amountString'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_amountString']);
    }
}
