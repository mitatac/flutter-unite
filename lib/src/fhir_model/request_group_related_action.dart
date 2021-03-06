import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'duration.dart';
import 'range.dart';
/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
class RequestGroupRelatedAction {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The element id of the action this is related to.
    String actionId;
    /// Extensions for actionId
    Element extActionId;
    /// The relationship of this action to the related action.
    String relationship;
    /// Extensions for relationship
    Element extRelationship;
    /// A duration or range of durations to apply to the relationship. For example, 30-60 minutes before.
    Duration offsetDuration;
    /// A duration or range of durations to apply to the relationship. For example, 30-60 minutes before.
    Range offsetRange;
 
    RequestGroupRelatedAction.fromJSON( Map json ){
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
        this.actionId = json['actionId'];
        this.extActionId = json['_actionId'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_actionId']);
        this.relationship = json['relationship'];
        this.extRelationship = json['_relationship'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_relationship']);
        this.offsetDuration = json['offsetDuration'] == null ? null : FHIRObjectFactory.buildFromJSON('Duration', json['offsetDuration']);
        this.offsetRange = json['offsetRange'] == null ? null : FHIRObjectFactory.buildFromJSON('Range', json['offsetRange']);
    }
}
