package Dist::Zilla::Plugin::UploadToDuckPAN;
# ABSTRACT: Dist::Zilla plugin to upload to https://duckpan.org/ via https://dukgo.com/

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

=encoding utf8

=head1 SYNOPSIS

In dist.ini:

  [UploadToDuckPAN]
  
In ~/.dzil/config:

  [%DUKGO]
  username = youruserondukgocom
  password = yourpasswordondukgo.com

=head1 DESCRIPTION

=head1 SEE ALSO

L<Dist::Zilla::Plugin::UploadToCPAN>

=head1 SUPPORT

IRC

  Join #duckduckgo on irc.freenode.net. Highlight Getty for fast reaction :).

Repository

  http://github.com/duckduckgo/p5-dist-zilla-plugin-uploadtoduckpan
  Pull request and additional contributors are welcome
 
Issue Tracker

  http://github.com/duckduckgo/p5-dist-zilla-plugin-uploadtoduckpan/issues
