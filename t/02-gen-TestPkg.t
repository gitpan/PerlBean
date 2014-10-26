# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 2 };
use PerlBean;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

use IO::File;
use PerlBean::Attribute::Factory;

my @attribute_class = (
	{
		attribute_name => 'b1',
		type => 'BOOLEAN',
	},
	{
		attribute_name => 'b2',
		type => 'BOOLEAN',
		default_value => 1,
	},
	{
		attribute_name => 'b3',
		type => 'BOOLEAN',
		mandatory => 1,
	},
	{
		attribute_name => 'b4',
		type => 'BOOLEAN',
		default_value => 1,
		mandatory => 1,
	},

	{
		attribute_name => 's1',
		type => 'SINGLE',
	},
	{
		attribute_name => 's2',
		type => 'SINGLE',
		allow_empty => 0,
	},
	{
		attribute_name => 's3',
		type => 'SINGLE',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
	},
	{
		attribute_name => 's4',
		type => 'SINGLE',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
	},
	{
		attribute_name => 's5',
		type => 'SINGLE',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
	},
	{
		attribute_name => 's6',
		type => 'SINGLE',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
	},

	{
		attribute_name => 'm1',
		type => 'MULTI',
	},
	{
		attribute_name => 'm2',
		type => 'MULTI',
		allow_empty => 0,
	},
	{
		attribute_name => 'm3',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
	},
	{
		attribute_name => 'm4',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
	},
	{
		attribute_name => 'm5',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
	},
	{
		attribute_name => 'm6',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
	},
	{
		attribute_name => 'm7',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
		ordered => 1,
	},
	{
		attribute_name => 'm8',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
		unique => 1,
	},
	{
		attribute_name => 'm9',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
		ordered => 1,
		unique => 1,
	},
	{
		attribute_name => 'm10',
		type => 'MULTI',
		allow_empty => 0,
		allow_isa => [qw (isaFoo isaBar)],
		allow_ref => [qw (refFoo refBar)],
		allow_rx => [qw (^\d+$ ^\S+$)],
		allow_value => [qw (valueFoo valueBar)],
		mandatory => 1,
		associative => 1,
		unique => 1,
	},
);

my $bean = PerlBean->new ({
	package => 'tmp::TestPkg'
});
my $factory = PerlBean::Attribute::Factory->new ();

foreach my $attribute_class (@attribute_class) {
	$attribute_class->{perl_bean} = $bean;
	my $attribute = $factory->createAttribute ($attribute_class);
	$attribute->{short_description} = $attribute->{attribute_name};
	$bean->addAttribute ($attribute->getAttributeName (), $attribute);
}

my $fh = IO::File->new ('> tmp/TestPkg.pm');
$bean->write ($fh);
$fh->close ();

use AutoSplit;
autosplit('tmp/TestPkg.pm', 'auto', 0, 1, 1) ;

system ("$^X -c tmp/TestPkg.pm > /dev/null 2>&1");
if ($?>>8) {
	ok (0);
} else {
	ok (1);
}
