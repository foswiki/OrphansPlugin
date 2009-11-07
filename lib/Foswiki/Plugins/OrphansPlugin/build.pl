#!/usr/bin/perl -w
#
# Build file for OrphansPlugin
#
package OrphansPluginBuild;

BEGIN {
  foreach my $pc (split(/:/, $ENV{FOSWIKI_LIBS})) {
    unshift @INC, $pc;
  }
}

use Foswiki::Contrib::Build;

$build = new Foswiki::Contrib::Build("OrphansPlugin");
$build->build($build->{target});
