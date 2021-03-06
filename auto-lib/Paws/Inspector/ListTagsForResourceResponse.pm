
package Paws::Inspector::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Tag]', traits => ['Unwrapped'], xmlname => 'tags' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Inspector::Tag>]

A collection of key and value pairs.




=cut

1;