import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
class OperationDefinitionOverload {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Name of parameter to include in overload.
    List<String> parameterName;
    /// Extensions for parameterName
    List<Element> extParameterName;
    /// Comments to go on overload.
    String comment;
    /// Extensions for comment
    Element extComment;
 
    OperationDefinitionOverload.fromJSON( Map json ){
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
        this.parameterName = List<String>();
        if (json['parameterName'] != null && json['parameterName'].length > 0) {
          if( json['parameterName'] is List ){
            json['parameterName'].forEach((i){
              this.parameterName.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['parameterName'];
            this.parameterName.add(i);
          }          
        }
        this.extParameterName = List<Element>();
        if (json['_parameterName'] != null && json['_parameterName'].length > 0) {
          if( json['_parameterName'] is List ){
            json['_parameterName'].forEach((i){
              this.extParameterName.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_parameterName'];
            this.extParameterName.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.comment = json['comment'];
        this.extComment = json['_comment'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_comment']);
    }
}
