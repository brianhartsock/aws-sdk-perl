
package Paws::CloudWatchEvents::ListTargetsByRuleResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Target]');


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRuleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates that there are additional results to retrieve.



=head2 Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>]

Lists the targets assigned to the rule.




=cut

1;