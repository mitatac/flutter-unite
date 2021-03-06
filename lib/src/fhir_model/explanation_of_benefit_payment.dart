import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'money.dart';
import 'element.dart';
import 'identifier.dart';
/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefitPayment {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Whether this represents partial or complete payment of the benefits payable.
    CodeableConcept type;
    /// Total amount of all adjustments to this payment included in this transaction which are not related to this claim's adjudication.
    Money adjustment;
    /// Reason for the payment adjustment.
    CodeableConcept adjustmentReason;
    /// Estimated date the payment will be issued or the actual issue date of payment.
    DateTime date;
    /// Extensions for date
    Element extDate;
    /// Benefits payable less any payment adjustment.
    Money amount;
    /// Issuer's unique identifier for the payment instrument.
    Identifier identifier;
 
    ExplanationOfBenefitPayment.fromJSON( Map json ){
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
        this.type = json['type'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['type']);
        this.adjustment = json['adjustment'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['adjustment']);
        this.adjustmentReason = json['adjustmentReason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['adjustmentReason']);
        if( json['date'] != null ) { this.date = DateTime.parse(json['date']);}
        this.extDate = json['_date'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_date']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['amount']);
        this.identifier = json['identifier'] == null ? null : FHIRObjectFactory.buildFromJSON('Identifier', json['identifier']);
    }
}
