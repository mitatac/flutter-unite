import 'extension.dart';
import 'fhir_object_factory.dart';
import 'test_script_link.dart';
import 'test_script_capability.dart';
/// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScriptMetadata {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A link to the FHIR specification that this test is covering.
    List<TestScriptLink> link;
    /// Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
    List<TestScriptCapability> capability;
 
    TestScriptMetadata.fromJSON( Map json ){
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
        this.link = List<TestScriptLink>();
        if (json['link'] != null && json['link'].length > 0) {
          if( json['link'] is List ){
            json['link'].forEach((i){
              this.link.add(FHIRObjectFactory.buildFromJSON('TestScriptLink', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['link'];
            this.link.add(FHIRObjectFactory.buildFromJSON('TestScriptLink', i));
          }          
        }
        this.capability = List<TestScriptCapability>();
        if (json['capability'] != null && json['capability'].length > 0) {
          if( json['capability'] is List ){
            json['capability'].forEach((i){
              this.capability.add(FHIRObjectFactory.buildFromJSON('TestScriptCapability', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['capability'];
            this.capability.add(FHIRObjectFactory.buildFromJSON('TestScriptCapability', i));
          }          
        }
    }
}
