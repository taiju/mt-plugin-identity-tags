use strict;
use lib qw( t/lib lib extlib );
use warnings;
use MT;
use Test::More tests => 2;
use MT::Test;

ok(MT->component ('IdentityFunction'), "IdentityFunction plugin loaded correctry");

require_ok('IdentityFunction::Tags');

1;
