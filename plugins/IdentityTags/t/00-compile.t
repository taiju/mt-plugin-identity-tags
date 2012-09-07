use strict;
use lib qw( t/lib lib extlib );
use warnings;
use MT;
use Test::More tests => 2;
use MT::Test;

ok(MT->component ('IdentityTags'), "IdentityTags plugin loaded correctry");

require_ok('IdentityTags');

1;
