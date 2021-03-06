import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'money.dart';
import 'element.dart';
/// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponseAdjudication {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A code to indicate the information type of this adjudication record. Information types may include the value submitted, maximum values or percentages allowed or payable under the plan, amounts that: the patient is responsible for in aggregate or pertaining to this item; amounts paid by other coverages; and, the benefit payable for this item.
    CodeableConcept category;
    /// A code supporting the understanding of the adjudication result and explaining variance from expected amount.
    CodeableConcept reason;
    /// Monetary amount associated with the category.
    Money amount;
    /// A non-monetary value associated with the category. Mutually exclusive to the amount element above.
    double value;
    /// Extensions for value
    Element extValue;
 
    ClaimResponseAdjudication.fromJSON( Map json ){
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
        this.category = json['category'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['category']);
        this.reason = json['reason'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['reason']);
        this.amount = json['amount'] == null ? null : FHIRObjectFactory.buildFromJSON('Money', json['amount']);
        if( json['value'] != null && json['value'] is int ) {
          this.value = json['value'].toDouble();
        } else {
          this.value = json['value'];
        }
    
        this.extValue = json['_value'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_value']);
    }
}
