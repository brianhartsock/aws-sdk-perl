
package Paws::GameLift::DescribeEC2InstanceLimitsOutput;
  use Moose;
  has EC2InstanceLimits => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::EC2InstanceLimit]');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeEC2InstanceLimitsOutput

=head1 ATTRIBUTES


=head2 EC2InstanceLimits => ArrayRef[L<Paws::GameLift::EC2InstanceLimit>]

Object containing the maximum number of instances for the specified
instance type.




=cut

1;