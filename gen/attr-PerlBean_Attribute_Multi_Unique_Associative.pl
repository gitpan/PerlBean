use IO::File;
my $fh = IO::File->new ('< syn-PerlBean_Attribute_Multi_Unique_Associative.pl');
$fh = IO::File->new ('< gen/syn-PerlBean_Attribute_Multi_Unique_Associative.pl') if (! defined ($fh));
my $syn = '';
my $prev_line = $fh->getline ();
while (my $line = $fh->getline ()) {
	$syn .= ' ' . $prev_line;
	$prev_line = $line;
}
chomp ($syn);

$desc = <<EOF;
C<PerlBean::Attribute::Multi::Unique::Associative> contains unique associative MULTI bean attribute information. It is a subclass of C<PerlBean::Attribute::Multi>. The code generation and documentation methods from C<PerlBean::Attribute> are implemented.
EOF
chomp ($desc);

push (@::bean_desc, {
		bean_opt => {
			abstract => 'Unique, associative MULTI bean attribute information',
			package => 'PerlBean::Attribute::Multi::Unique::Associative',
			base => [ qw (PerlBean::Attribute::Multi)],
			description => $desc,
			short_description => 'contains unique associative MULTI bean attribute information',
			synopsis => $syn,
		},
		attr_opt => [
		],
		meth_opt => [
			{
				method_name => 'writeDocMethods',
				description => '__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',
			},
			{
				method_name => 'writeMethods',
				description => '__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',
			},
			{
				method_name => 'writeDocInheritMethods',
				description => '__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',
			},
		],
	},
);

1;