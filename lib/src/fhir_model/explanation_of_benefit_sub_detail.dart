import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'quantity.dart';
import 'money.dart';
import 'reference.dart';
import 'explanation_of_benefit_adjudication.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitSubDetail {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
    int sequence;
    /// Extensions for sequence
    Element extSequence;
    /// The type of revenue or cost center providing the product and/or service.
    CodeableConcept revenue;
    /// Code to identify the general type of benefits under which products and services are provided.
    CodeableConcept category;
    /// When the value is a group code then this item collects a set of related claim details, otherwise this contains the product, service, drug or other billing code for the item.
    CodeableConcept productOrService;
    /// Item typification or modifiers codes to convey additional context for the product or service.
    List<CodeableConcept> modifier;
    /// Identifies the program under which this may be recovered.
    List<CodeableConcept> programCode;
    /// The number of repetitions of a service or product.
    Quantity quantity;
    /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
    Money unitPrice;
    /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
    double factor;
    /// Extensions for factor
    Element extFactor;
    /// The quantity times the unit price for an additional service or product or charge.
    Money net;
    /// Unique Device Identifiers associated with this line item.
    List<Reference> udi;
    /// The numbers associated with notes below which apply to the adjudication of this item.
    List<int> noteNumber;
    /// Extensions for noteNumber
    List<Element> extNoteNumber;
    /// The adjudication results.
    List<ExplanationOfBenefitAdjudication> adjudication;
 
    ExplanationOfBenefitSubDetail.fromJSON( Map json ){
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
        this.sequence = json['sequence'];
        this.extSequence = json['_sequence'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_sequence']);
        this.revenue = json['revenue'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['revenue']);
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.productOrService = json['productOrService'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['productOrService']);
        this.modifier = List<CodeableConcept>();
        if (json['modifier'] != null && json['modifier'].length > 0) {
          if( json['modifier'] is List ){
            json['modifier'].forEach((i){
              this.modifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['modifier'];
            this.modifier.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.programCode = List<CodeableConcept>();
        if (json['programCode'] != null && json['programCode'].length > 0) {
          if( json['programCode'] is List ){
            json['programCode'].forEach((i){
              this.programCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['programCode'];
            this.programCode.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.quantity = json['quantity'] == null ? null : FHIRObjectFactory.buildFromJSON('Quantity', json['quantity']);
        this.unitPrice = json['unitPrice'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['unitPrice']);
        if( json['factor'] != null && json['factor'] is int ) {
          this.factor = json['factor'].toDouble();
        } else {
          this.factor = json['factor'];
        }
    
        this.extFactor = json['_factor'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_factor']);
        this.net = json['net'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['net']);
        this.udi = List<Reference>();
        if (json['udi'] != null && json['udi'].length > 0) {
          if( json['udi'] is List ){
            json['udi'].forEach((i){
              this.udi.add(FHIRObjectFactory.buildFromJSON('Reference', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['udi'];
            this.udi.add(FHIRObjectFactory.buildFromJSON('Reference', i));
          }          
        }
        this.noteNumber = List<int>();
        if (json['noteNumber'] != null && json['noteNumber'].length > 0) {
          if( json['noteNumber'] is List ){
            json['noteNumber'].forEach((i){
              this.noteNumber.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['noteNumber'];
            this.noteNumber.add(i);
          }          
        }
        this.extNoteNumber = List<Element>();
        if (json['_noteNumber'] != null && json['_noteNumber'].length > 0) {
          if( json['_noteNumber'] is List ){
            json['_noteNumber'].forEach((i){
              this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_noteNumber'];
            this.extNoteNumber.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.adjudication = List<ExplanationOfBenefitAdjudication>();
        if (json['adjudication'] != null && json['adjudication'].length > 0) {
          if( json['adjudication'] is List ){
            json['adjudication'].forEach((i){
              this.adjudication.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAdjudication', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['adjudication'];
            this.adjudication.add(FHIRObjectFactory.buildFromJSON('ExplanationOfBenefitAdjudication', i));
          }          
        }
    }
}
