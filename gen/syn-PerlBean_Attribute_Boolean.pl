use strict;
use PerlBean::Attribute::Boolean;
my $attr = PerlBean::Attribute::Boolean->new ({
	attribute_name => 'true',
	short_description => 'something is true',
});

use IO::File;
-d 'tmp' || mkdir ('tmp');
my $fh = IO::File->new ('> tmp/PerlBean_Attribute_Boolean.pl.out');
$attr->writeMethods ($fh);
$attr->writeDocMethods ($fh);
1;
