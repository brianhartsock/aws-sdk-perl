package Paws::Inspector::AssessmentRun;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', xmlname => 'assessmentTemplateArn', request_name => 'assessmentTemplateArn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has CompletedAt => (is => 'ro', isa => 'Str', xmlname => 'completedAt', request_name => 'completedAt', traits => ['Unwrapped','NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest'], required => 1);
  has DataCollected => (is => 'ro', isa => 'Bool', xmlname => 'dataCollected', request_name => 'dataCollected', traits => ['Unwrapped','NameInRequest'], required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', xmlname => 'durationInSeconds', request_name => 'durationInSeconds', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentRunNotification]', xmlname => 'notifications', request_name => 'notifications', traits => ['Unwrapped','NameInRequest'], required => 1);
  has RulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'rulesPackageArns', request_name => 'rulesPackageArns', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', xmlname => 'startedAt', request_name => 'startedAt', traits => ['Unwrapped','NameInRequest']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', request_name => 'state', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StateChangedAt => (is => 'ro', isa => 'Str', xmlname => 'stateChangedAt', request_name => 'stateChangedAt', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StateChanges => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentRunStateChange]', xmlname => 'stateChanges', request_name => 'stateChanges', traits => ['Unwrapped','NameInRequest'], required => 1);
  has UserAttributesForFindings => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'userAttributesForFindings', request_name => 'userAttributesForFindings', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRun object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserAttributesForFindings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRun object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A snapshot of an Amazon Inspector assessment run that contains the
findings of the assessment run .

Used as the response element in the DescribeAssessmentRuns action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the assessment run.


=head2 B<REQUIRED> AssessmentTemplateArn => Str

  The ARN of the assessment template that is associated with the
assessment run.


=head2 CompletedAt => Str

  The assessment run completion time that corresponds to the rules
packages evaluation completion time or failure.


=head2 B<REQUIRED> CreatedAt => Str

  The time when StartAssessmentRun was called.


=head2 B<REQUIRED> DataCollected => Bool

  A Boolean value (true or false) that specifies whether the process of
collecting data from the agents is completed.


=head2 B<REQUIRED> DurationInSeconds => Int

  The duration of the assessment run.


=head2 B<REQUIRED> Name => Str

  The auto-generated name for the assessment run.


=head2 B<REQUIRED> Notifications => ArrayRef[L<Paws::Inspector::AssessmentRunNotification>]

  A list of notifications for the event subscriptions. A notification
about a particular generated finding is added to this list only once.


=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str]

  The rules packages selected for the assessment run.


=head2 StartedAt => Str

  The time when StartAssessmentRun was called.


=head2 B<REQUIRED> State => Str

  The state of the assessment run.


=head2 B<REQUIRED> StateChangedAt => Str

  The last time when the assessment run's state changed.


=head2 B<REQUIRED> StateChanges => ArrayRef[L<Paws::Inspector::AssessmentRunStateChange>]

  A list of the assessment run state changes.


=head2 B<REQUIRED> UserAttributesForFindings => ArrayRef[L<Paws::Inspector::Attribute>]

  The user-defined attributes that are assigned to every generated
finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

