use strict;

push(@::bean_desc, {
    bean_opt => {
        abstract => 'Unique MULTI bean attribute information',
        package => 'PerlBean::Attribute::Multi::Unique',
        base => [ qw(PerlBean::Attribute::Multi)],
        description => <<EOF,
C<PerlBean::Attribute::Multi::Unique> contains unique MULTI bean attribute information. It is a subclass of C<PerlBean::Attribute::Multi>. The code generation and documentation methods from C<PerlBean::Attribute> are implemented.
EOF
        short_description => 'contains unique MULTI bean attribute information',
        synopsis => &get_syn(),
    },
    attr_opt => [
    ],
    meth_opt => [
        {
            method_name => 'write_doc_methods',
            description => <<EOF,
__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...> and B<values...>.
EOF
        },
        {
            method_name => 'write_methods',
            description => <<EOF,
__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...> and B<values...>.
EOF
        },
        {
            method_name => 'write_doc_inherit_methods',
            description => <<EOF,
__SUPER_POD__ Access methods are B<set...>, B<add...>, B<delete...>, B<exists...> and B<values...>.
EOF
        },
    ],
} );

sub get_syn {
    use IO::File;
    my $fh = IO::File->new('< syn-PerlBean_Attribute_Multi_Unique.pl');
    $fh = IO::File->new('< gen/syn-PerlBean_Attribute_Multi_Unique.pl') if (! defined($fh));
    my $syn = '';
    my $prev_line = $fh->getline ();
    while (my $line = $fh->getline ()) {
        $syn .= ' ' . $prev_line;
        $prev_line = $line;
    }
    return($syn);
}

1;
