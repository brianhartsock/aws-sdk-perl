
package Paws::StorageGateway::ListTapes;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListTapesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListTapes - Arguments for method ListTapes on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTapes on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method ListTapes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTapes.

As an example:

  $service_obj->ListTapes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

An optional number limit for the tapes in the list returned by this
call.



=head2 Marker => Str

A string that indicates the position at which to begin the returned
list of tapes.



=head2 TapeARNs => ArrayRef[Str]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTapes in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

