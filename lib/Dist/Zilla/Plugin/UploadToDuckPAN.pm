package Dist::Zilla::Plugin::UploadToDuckPAN;

use Moose;
extends 'Dist::Zilla::Plugin::UploadToCPAN';

has '+credentials_stash' => (
	default => sub { '%DUKGO' }
);

has 'upload_uri' => (
	is => 'ro',
	isa => 'Str',
	default => sub { 'https://dukgo.com/duckpan/do/upload' }
);
sub has_upload_uri { 1 }

1;
