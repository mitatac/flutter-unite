import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'codeable_concept.dart';
import 'reference.dart';
/// The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population where the effect estimate is derived from a combination of research studies.
class EffectEvidenceSynthesisResultsByExposure {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Human-readable summary of results by exposure state.
    String description;
    /// Extensions for description
    Element extDescription;
    /// Whether these results are for the exposure state or alternative exposure state.
    String exposureState;
    /// Extensions for exposureState
    Element extExposureState;
    /// Used to define variant exposure states such as low-risk state.
    CodeableConcept variantState;
    /// Reference to a RiskEvidenceSynthesis resource.
    Reference riskEvidenceSynthesis;
 
    EffectEvidenceSynthesisResultsByExposure.fromJSON( Map json ){
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
        this.description = json['description'];
        this.extDescription = json['_description'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_description']);
        this.exposureState = json['exposureState'];
        this.extExposureState = json['_exposureState'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_exposureState']);
        this.variantState = json['variantState'] == null ? null : FHIRObjectFactory.buildFromJSON('CodeableConcept', json['variantState']);
        this.riskEvidenceSynthesis = json['riskEvidenceSynthesis'] == null ? null : FHIRObjectFactory.buildFromJSON('Reference', json['riskEvidenceSynthesis']);
    }
}
