import 'extension.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
/// Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
class LocationHoursOfOperation {
    /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
    String id;
    /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// Indicates which days of the week are available between the start and end Times.
    List<String> daysOfWeek;
    /// Extensions for daysOfWeek
    List<Element> extDaysOfWeek;
    /// The Location is open all day.
    bool allDay;
    /// Extensions for allDay
    Element extAllDay;
    /// Time that the Location opens.
    String openingTime;
    /// Extensions for openingTime
    Element extOpeningTime;
    /// Time that the Location closes.
    String closingTime;
    /// Extensions for closingTime
    Element extClosingTime;
 
    LocationHoursOfOperation.fromJSON( Map json ){
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
        this.daysOfWeek = List<String>();
        if (json['daysOfWeek'] != null && json['daysOfWeek'].length > 0) {
          if( json['daysOfWeek'] is List ){
            json['daysOfWeek'].forEach((i){
              this.daysOfWeek.add(i);
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['daysOfWeek'];
            this.daysOfWeek.add(i);
          }          
        }
        this.extDaysOfWeek = List<Element>();
        if (json['_daysOfWeek'] != null && json['_daysOfWeek'].length > 0) {
          if( json['_daysOfWeek'] is List ){
            json['_daysOfWeek'].forEach((i){
              this.extDaysOfWeek.add(FHIRObjectFactory.buildFromJSON('Element', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['_daysOfWeek'];
            this.extDaysOfWeek.add(FHIRObjectFactory.buildFromJSON('Element', i));
          }          
        }
        this.allDay = json['allDay'];
        this.extAllDay = json['_allDay'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_allDay']);
        this.openingTime = json['openingTime'];
        this.extOpeningTime = json['_openingTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_openingTime']);
        this.closingTime = json['closingTime'];
        this.extClosingTime = json['_closingTime'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_closingTime']);
    }
}
