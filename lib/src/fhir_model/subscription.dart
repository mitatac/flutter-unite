import 'meta.dart';
import 'fhir_object_factory.dart';
import 'element.dart';
import 'narrative.dart';
import 'extension.dart';
import 'contact_point.dart';
import 'subscription_channel.dart';
/// The subscription resource is used to define a push-based subscription from a server to another system. Once a subscription is registered with the server, the server checks every resource that is created or updated, and if the resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an appropriate action.
class Subscription {
    /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    String id;
    /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    Meta meta;
    /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    String implicitRules;
    /// Extensions for implicitRules
    Element extImplicitRules;
    /// The base language in which the resource is written.
    String language;
    /// Extensions for language
    Element extLanguage;
    /// A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    Narrative text;
    /// May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    List<Extension> extension;
    /// May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// 
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    List<Extension> modifierExtension;
    /// The status of the subscription, which marks the server state for managing the subscription.
    String status;
    /// Extensions for status
    Element extStatus;
    /// Contact details for a human to contact about the subscription. The primary use of this for system administrator troubleshooting.
    List<ContactPoint> contact;
    /// The time for the server to turn the subscription off.
    DateTime end;
    /// Extensions for end
    Element extEnd;
    /// A description of why this subscription is defined.
    String reason;
    /// Extensions for reason
    Element extReason;
    /// The rules that the server should use to determine when to generate notifications for this subscription.
    String criteria;
    /// Extensions for criteria
    Element extCriteria;
    /// A record of the last error that occurred when the server processed a notification.
    String error;
    /// Extensions for error
    Element extError;
    /// Details where to send notifications when resources are received that meet the criteria.
    SubscriptionChannel channel;
 
    Subscription.fromJSON( Map json ){
        this.id = json['id'];
        this.meta = json['meta'] == null ? null : FHIRObjectFactory.buildFromJSON('Meta', json['meta']);
        this.implicitRules = json['implicitRules'];
        this.extImplicitRules = json['_implicitRules'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_implicitRules']);
        this.language = json['language'];
        this.extLanguage = json['_language'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_language']);
        this.text = json['text'] == null ? null : FHIRObjectFactory.buildFromJSON('Narrative', json['text']);
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
        this.status = json['status'];
        this.extStatus = json['_status'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_status']);
        this.contact = List<ContactPoint>();
        if (json['contact'] != null && json['contact'].length > 0) {
          if( json['contact'] is List ){
            json['contact'].forEach((i){
              this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
            });
          } else {
            // this handles the case when the list only has one object and does not return as a list
            var i = json['contact'];
            this.contact.add(FHIRObjectFactory.buildFromJSON('ContactPoint', i));
          }          
        }
        if( json['end'] != null ) { this.end = DateTime.parse(json['end']);}
        this.extEnd = json['_end'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_end']);
        this.reason = json['reason'];
        this.extReason = json['_reason'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_reason']);
        this.criteria = json['criteria'];
        this.extCriteria = json['_criteria'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_criteria']);
        this.error = json['error'];
        this.extError = json['_error'] == null ? null : FHIRObjectFactory.buildFromJSON('Element', json['_error']);
        this.channel = json['channel'] == null ? null : FHIRObjectFactory.buildFromJSON('SubscriptionChannel', json['channel']);
    }
}
