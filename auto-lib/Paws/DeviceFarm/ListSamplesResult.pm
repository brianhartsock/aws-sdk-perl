
package Paws::DeviceFarm::ListSamplesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Samples => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Sample]', traits => ['Unwrapped'], xmlname => 'samples' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListSamplesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.



=head2 Samples => ArrayRef[L<Paws::DeviceFarm::Sample>]

Information about the samples.




=cut

1;