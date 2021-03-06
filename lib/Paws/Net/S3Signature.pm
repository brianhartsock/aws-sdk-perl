package Paws::Net::S3Signature;
  use Moose::Role;
  requires 'service';

  use Crypt::Digest::SHA256;
  use Net::Amazon::Signature::V4;

  sub sign {
    my ($self, $request) = @_;

    if ($self->session_token) {
      $request->header( 'X-Amz-Security-Token' => $self->session_token );
    }

    if ($request->content) { # && !$request->content_md5) {
      my $hasher = Crypt::Digest::SHA256->new;
      $hasher->add($request->content);
      $request->header('X-Amz-Content-Sha256' => $hasher->hexdigest);
    } else {
      $request->header('X-Amz-Content-Sha256' => 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD' );
    }

    $request->header( 'Date' => $request->{'date'} );
    $request->header( 'Host' => $self->endpoint_host );

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    my $signed_req = $sig->sign( $request );
    return $signed_req;

  }
1;
