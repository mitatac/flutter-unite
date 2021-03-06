import 'extension.dart';
import 'fhir_object_factory.dart';
import 'codeable_concept.dart';
import 'annotation.dart';
import 'risk_evidence_synthesis_certainty_subcomponent.dart';
/// The RiskEvidenceSynthesis resource describes the likelihood of an outcome in a population plus exposure state where the risk estimate is derived from a combination of research studies.
class RiskEvidenceSynthesisCertainty {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// A rating of the certainty of the effect estimate.
    List<CodeableConcept> rating;
    /// A human-readable string to clarify or explain concepts about the resource.
    List<Annotation> note;
    /// A description of a component of the overall certainty.
    List<RiskEvidenceSynthesisCertaintySubcomponent> certaintySubcomponent;
 
    RiskEvidenceSynthesisCertainty.fromJSON( Map json ){
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
        this.rating = List<CodeableConcept>();
        if (json['rating'] != null && json['rating'].length > 0) {
          if( json['rating'] is List ){
            json['rating'].forEach((i){
              this.rating.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['rating'];
            this.rating.add(FHIRObjectFactory.buildFromJSON('CodeableConcept', i));
          }          
        }
        this.note = List<Annotation>();
        if (json['note'] != null && json['note'].length > 0) {
          if( json['note'] is List ){
            json['note'].forEach((i){
              this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['note'];
            this.note.add(FHIRObjectFactory.buildFromJSON('Annotation', i));
          }          
        }
        this.certaintySubcomponent = List<RiskEvidenceSynthesisCertaintySubcomponent>();
        if (json['certaintySubcomponent'] != null && json['certaintySubcomponent'].length > 0) {
          if( json['certaintySubcomponent'] is List ){
            json['certaintySubcomponent'].forEach((i){
              this.certaintySubcomponent.add(FHIRObjectFactory.buildFromJSON('RiskEvidenceSynthesisCertaintySubcomponent', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['certaintySubcomponent'];
            this.certaintySubcomponent.add(FHIRObjectFactory.buildFromJSON('RiskEvidenceSynthesisCertaintySubcomponent', i));
          }          
        }
    }
}
