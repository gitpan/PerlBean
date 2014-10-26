package PerlBean::Attribute::Multi::Unique::Associative;

use 5.005;
use base qw( PerlBean::Attribute::Multi );
use strict;
use warnings;
use AutoLoader qw(AUTOLOAD);
use Error qw(:try);
use PerlBean::Style qw(:codegen);

# Variable to not confuse AutoLoader
our $SUB = 'sub';

# Package version
our ($VERSION) = '$Revision: 0.7 $' =~ /\$Revision:\s+([^\s]+)/;

1;

__END__

=head1 NAME

PerlBean::Attribute::Multi::Unique::Associative - contains unique associative MULTI bean attribute information

=head1 SYNOPSIS

 use strict;
 use PerlBean::Attribute::Multi::Unique::Associative;
 my $attr = PerlBean::Attribute::Multi::Unique::Associative->new( {
     attribute_name => 'ssns_i_know_from_people',
     short_description => 'all SSNs I know from people',
 } );
 
 use IO::File;
 -d 'tmp' || mkdir('tmp');
 my $fh = IO::File->new('> tmp/PerlBean_Attribute_Multi_Unique_Associative.pl.out');
 $attr->write_methods($fh);
 $attr->write_doc_methods($fh);

=head1 ABSTRACT

Unique, associative MULTI bean attribute information

=head1 DESCRIPTION

C<PerlBean::Attribute::Multi::Unique::Associative> contains unique associative MULTI bean attribute information. It is a subclass of C<PerlBean::Attribute::Multi>. The code generation and documentation methods from C<PerlBean::Attribute> are implemented.

=head1 CONSTRUCTOR

=over

=item new(OPT_HASH_REF)

Creates a new C<PerlBean::Attribute::Multi::Unique::Associative> object. C<OPT_HASH_REF> is a hash reference used to pass initialization options. C<OPT_HASH_REF> is mandatory. On error an exception C<Error::Simple> is thrown.

Options for C<OPT_HASH_REF> inherited through package B<C<PerlBean::Attribute>> may include:

=over

=item B<C<attribute_name>>

Passed to L<set_attribute_name()>. Mandatory option.

=item B<C<default_value>>

Passed to L<set_default_value()>.

=item B<C<documented>>

Passed to L<set_documented()>. Defaults to B<1>.

=item B<C<exception_class>>

Passed to L<set_exception_class()>. Defaults to B<'Error::Simple'>.

=item B<C<mandatory>>

Passed to L<set_mandatory()>. Defaults to B<0>.

=item B<C<method_base>>

Passed to L<set_method_base()>.

=item B<C<perl_bean>>

Passed to L<set_perl_bean()>.

=item B<C<short_description>>

Passed to L<set_short_description()>.

=back

Options for C<OPT_HASH_REF> inherited through package B<C<PerlBean::Attribute::Single>> may include:

=over

=item B<C<allow_empty>>

Passed to L<set_allow_empty()>. Defaults to B<1>.

=item B<C<allow_isa>>

Passed to L<set_allow_isa()>. Must be an C<ARRAY> reference.

=item B<C<allow_ref>>

Passed to L<set_allow_ref()>. Must be an C<ARRAY> reference.

=item B<C<allow_rx>>

Passed to L<set_allow_rx()>. Must be an C<ARRAY> reference.

=item B<C<allow_value>>

Passed to L<set_allow_value()>. Must be an C<ARRAY> reference.

=back

=back

=head1 METHODS

=over

=item get_overloaded_attribute()

This method is inherited from package C<'PerlBean::Attribute'>. Searches superclass packages for an identically named C<PerlBean::Attribute>. If found it is returned otherwise C<undef> is returned.

=item get_package()

This method is inherited from package C<'PerlBean::Attribute'>. Returns the package name. The package name is obtained from the C<PerlBean> to which the C<PerlBean::Attribute> belongs. Or, if the C<PerlBean::Attribute> does not belong to a C<PerlBean>, C<main> is returned.

=item get_package_us()

This method is inherited from package C<'PerlBean::Attribute'>. Calls C<get_package()> and replaces C<:+> with C <_>.

=item type()

This method is inherited from package C<'PerlBean::Attribute'>. Determins and returns the type of the attribute. The type is either C<BOOLEAN>, C<SINGLE> or C<MULTI>.

=item write_allow_isa()

This method is inherited from package C<'PerlBean::Attribute::Single'>. Returns a C<%ALLOW_ISA> line string for the attribute.

=item write_allow_ref()

This method is inherited from package C<'PerlBean::Attribute::Single'>. Returns a C<%ALLOW_REF> line string for the attribute.

=item write_allow_rx()

This method is inherited from package C<'PerlBean::Attribute::Single'>. Returns a C<%ALLOW_RX> line string for the attribute.

=item write_allow_value()

This method is inherited from package C<'PerlBean::Attribute::Single'>. Returns a C<%ALLOW_VALUE> line string for the attribute.

=item write_default_value()

This method is inherited from package C<'PerlBean::Attribute::Multi'>. Returns a C<%DEFAULT_VALUE> line string for the attribute.

=item write_doc_clauses(FILEHANDLE)

This method is inherited from package C<'PerlBean::Attribute'>. Writes documentation for the clauses to which the contents the contents of the attribute must adhere. C<FILEHANDLE> is an C<IO::Handle> object.

=item write_doc_inherit_methods(FILEHANDLE)

This method is an implementation from package C<'PerlBean::Attribute::Multi'>. Writes documentation for the access methods for the attribute in the case the attibute methods are inherited. C<FILEHANDLE> is an C<IO::Handle> object. Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',

=item write_doc_init(FILEHANDLE)

This method is inherited from package C<'PerlBean::Attribute::Multi'>. Writes documentation for C<_initialize()> for the attribute. C<FILEHANDLE> is an C<IO::Handle> object.

=item write_doc_methods(FILEHANDLE)

This method is an implementation from package C<'PerlBean::Attribute::Multi'>. Writes documentation for the access methods for the attribute. C<FILEHANDLE> is an C<IO::Handle> object. Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',

=item write_methods(FILEHANDLE)

This method is an implementation from package C<'PerlBean::Attribute::Multi'>. Writes the access methods for the attribute. C<FILEHANDLE> is an C<IO::Handle> object. Access methods are B<set...>, B<add...>, B<delete...>, B<exists...>, B<keys...> and B<values...>.',

=item write_opt_init(FILEHANDLE)

This method is inherited from package C<'PerlBean::Attribute::Multi'>. Writes C<_initialize()> option parsing code for the attribute. C<FILEHANDLE> is an C<IO::Handle> object.

=back

=head1 INHERITED METHODS FROM PerlBean::Attribute

=over

=item To access attribute named B<C<attribute_name>>:

set_attribute_name(), get_attribute_name()

=item To access attribute named B<C<default_value>>:

set_default_value(), get_default_value()

=item To access attribute named B<C<documented>>:

set_documented(), is_documented()

=item To access attribute named B<C<exception_class>>:

set_exception_class(), get_exception_class()

=item To access attribute named B<C<mandatory>>:

set_mandatory(), is_mandatory()

=item To access attribute named B<C<method_base>>:

set_method_base(), get_method_base()

=item To access attribute named B<C<perl_bean>>:

set_perl_bean(), get_perl_bean()

=item To access attribute named B<C<short_description>>:

set_short_description(), get_short_description()

=back

=head1 INHERITED METHODS FROM PerlBean::Attribute::Single

=over

=item To access attribute named B<C<allow_empty>>:

set_allow_empty(), is_allow_empty()

=item To access attribute named B<C<allow_isa>>:

set_allow_isa(), add_allow_isa(), delete_allow_isa(), exists_allow_isa(), values_allow_isa()

=item To access attribute named B<C<allow_ref>>:

set_allow_ref(), add_allow_ref(), delete_allow_ref(), exists_allow_ref(), values_allow_ref()

=item To access attribute named B<C<allow_rx>>:

set_allow_rx(), add_allow_rx(), delete_allow_rx(), exists_allow_rx(), values_allow_rx()

=item To access attribute named B<C<allow_value>>:

set_allow_value(), add_allow_value(), delete_allow_value(), exists_allow_value(), values_allow_value()

=back

=head1 SEE ALSO

L<PerlBean>,
L<PerlBean::Attribute>,
L<PerlBean::Attribute::Boolean>,
L<PerlBean::Attribute::Factory>,
L<PerlBean::Attribute::Multi>,
L<PerlBean::Attribute::Multi::Ordered>,
L<PerlBean::Attribute::Multi::Unique>,
L<PerlBean::Attribute::Multi::Unique::Associative::MethodKey>,
L<PerlBean::Attribute::Multi::Unique::Ordered>,
L<PerlBean::Attribute::Single>,
L<PerlBean::Collection>,
L<PerlBean::Dependency>,
L<PerlBean::Dependency::Import>,
L<PerlBean::Dependency::Require>,
L<PerlBean::Dependency::Use>,
L<PerlBean::Described>,
L<PerlBean::Described::ExportTag>,
L<PerlBean::Method>,
L<PerlBean::Method::Constructor>,
L<PerlBean::Style>,
L<PerlBean::Symbol>

=head1 BUGS

None known (yet.)

=head1 HISTORY

First development: November 2002

=head1 AUTHOR

Vincenzo Zocca

=head1 COPYRIGHT

Copyright 2002, 2003 by Vincenzo Zocca

=head1 LICENSE

This file is part of the C<PerlBean> module hierarchy for Perl by
Vincenzo Zocca.

The PerlBean module hierarchy is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2 of
the License, or (at your option) any later version.

The PerlBean module hierarchy is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with the PerlBean module hierarchy; if not, write to
the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
Boston, MA 02111-1307 USA

=cut

sub write_doc_inherit_methods {
    my $self = shift;
    my $fh = shift;

    my $mb = $self->get_method_base();

    my @meth = ();
    foreach my $lop ( qw(set add delete exists keys values) ) {
        my $op = &{$MOF}($lop);
        push( @meth, "$op$mb${BFP}()" );
    }
    my $meth = join( ', ', @meth );

    $fh->print(<<EOF);
$meth

EOF
}

sub write_doc_methods {
    my $self = shift;
    my $fh = shift;

    $self->is_documented() || return;

    $self->write_set_doc($fh);
    $self->write_add_doc($fh);
    $self->write_delete_doc($fh);
    $self->write_exists_doc($fh);
    $self->write_keys_doc($fh);
    $self->write_values_doc($fh);
}

sub write_methods {
    my $self = shift;
    my $fh = shift;

    $self->write_set_method($fh);
    $self->write_add_method($fh);
    $self->write_delete_method($fh);
    $self->write_exists_method($fh);
    $self->write_keys_method($fh);
    $self->write_values_method($fh);
}

sub write_set_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $an_esc = $self->esc_apos($an);
    my $op = &{$MOF}('set');
    my $mb = $self->get_method_base();
    my $ec = $self->get_exception_class();
    my $pkg = $self->get_package();
    my $pkg_us = $self->get_package_us();

    # Method head
    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

EOF

    # Check if list value is allowed to be empty
    if ( ! $self->is_allow_empty() ) {
        $fh->print(<<EOF);
${IND}# List value for $an_esc is not allowed to be empty
${IND}scalar${BFP}(\@_)${AO}||${AO}throw $ec${BFP}("ERROR: ${pkg}::set$mb, list value may not be empty.");

EOF
    }

    # Separate keys/values
    $fh->print(<<EOF);
${IND}# Separate keys/values
${IND}my \@key${AO}=${AO}();
${IND}my \@value${AO}=${AO}();
${IND}while${BCP}(${ACS}my \$key${AO}=${AO}shift${BFP}(\@_)${ACS})${PBOC[1]}{
${IND}${IND}push${BFP}(${ACS}\@key,${AC}\$key${ACS});
${IND}${IND}push${BFP}(${ACS}\@value,${AC}shift${BFP}(\@_)${ACS});
${IND}}

EOF

    # Check if isas/refs/rxs/values are allowed
    $fh->print(<<EOF);
${IND}# Check if isas/refs/rxs/values are allowed
${IND}\&_value_is_allowed${BFP}(${ACS}$an_esc,${AC}\@value${ACS})${AO}||${AO}throw $ec${BFP}("ERROR: ${pkg}::set$mb, one or more specified value(s) '\@value' is/are not allowed.");

EOF

    # Method tail
    $fh->print(<<EOF);
${IND}# Empty list
${IND}\$self->{$pkg_us}{$an}${AO}=${AO}{};

${IND}# Add keys/values
${IND}foreach my \$key (\@key)${PBOC[1]}{
${IND}${IND}\$self->{$pkg_us}{$an}{\$key}${AO}=${AO}shift${BFP}(\@value);
${IND}}
}

EOF
}

sub write_set_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('set');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';
    my $def = defined( $self->get_default_value() ) ? ' Default value at initialization is C<' . join( ', ', $self->esc_aq ( @{ $self->get_default_value() } ) ) . '>.' : '';
    my $empt = $self->is_allow_empty() ? '' : ' C<ARRAY> must at least have one element.';
    my $exc = ' On error an exception C<' . $self->get_exception_class() . '> is thrown.';
    my $attr_overl = $self->get_overloaded_attribute();
    my $overl = defined($attr_overl) ? " B<NOTE:> Methods B<C<*$mb ()>> are overloaded from package C<". $attr_overl->get_package() .'>.': '';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}(${ACS}[${ACS}KEY, VALUE ...${ACS}]${ACS})

Set ${desc} absolutely using keys/values. C<KEY, VALUE> are key/value pairs. 0 or more of these pairs may be supplied. Each key in is allowed to occur only once. Multiple occurences of the same key yield in the last occuring key to be inserted and the rest to be ignored.${def}${empt}${exc}${overl}

EOF

    $self->write_doc_clauses($fh);
}

sub write_add_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $an_esc = $self->esc_apos($an);
    my $op = &{$MOF}('add');
    my $mb = $self->get_method_base();
    my $ec = $self->get_exception_class();
    my $pkg = $self->get_package();
    my $pkg_us = $self->get_package_us();

    # Method head
    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

EOF

    # Separate keys/values
    $fh->print(<<EOF);
${IND}# Separate keys/values
${IND}my \@key${AO}=${AO}();
${IND}my \@value${AO}=${AO}();
${IND}while${BCP}(${ACS}my \$key${AO}=${AO}shift${BFP}(\@_)${ACS})${PBOC[1]}{
${IND}${IND}push${BFP}(${ACS}\@key,${AC}\$key${ACS});
${IND}${IND}push${BFP}(${ACS}\@value,${AC}shift${BFP}(\@_)${ACS});
${IND}}

EOF

    # Check if isas/refs/rxs/values are allowed
    $fh->print(<<EOF);
${IND}# Check if isas/refs/rxs/values are allowed
${IND}\&_value_is_allowed${BFP}(${ACS}$an_esc,${AC}\@value${ACS})${AO}||${AO}throw $ec${BFP}("ERROR: ${pkg}::add$mb, one or more specified value(s) '\@value' is/are not allowed.");

EOF

    # Method tail
    $fh->print(<<EOF);
${IND}# Add keys/values
${IND}foreach my \$key (\@key)${PBOC[1]}{
${IND}${IND}\$self->{$pkg_us}{$an}{\$key}${AO}=${AO}shift${BFP}(\@value);
${IND}}
}

EOF
}

sub write_add_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('add');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';
    my $exc = ' On error an exception C<' . $self->get_exception_class() . '> is thrown.';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}(${ACS}[${ACS}KEY, VALUE ...${ACS}]${ACS})

Add additional keys/values on ${desc}. C<KEY, VALUE> are key/value pairs. The addition may not yield to multiple identical keys in the list. Hence, multiple occurences of the same key cause the last occurence to be inserted.${exc}

EOF

    $self->write_doc_clauses($fh);
}

sub write_delete_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $an_esc = $self->esc_apos($an);
    my $op = &{$MOF}('delete');
    my $mb = $self->get_method_base();
    my $ec = $self->get_exception_class();
    my $pkg = $self->get_package();
    my $pkg_us = $self->get_package_us();

    # Method head
    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

EOF

    # Check if list value is allowed to be empty
    if ( ! $self->is_allow_empty() ) {
        $fh->print(<<EOF);
${IND}# List value for $an_esc is not allowed to be empty
${IND}my \%would_delete${AO}=${AO}();
${IND}foreach my \$val (\@_)${PBOC[1]}{
${IND}${IND}\$would_delete{\$val}${AO}=${AO}\$val if${BCP}(${ACS}exists${BFP}(${ACS}\$self->{$pkg_us}{$an}{\$val}${ACS})${ACS})
${IND}}
${IND}(${ACS}scalar${BFP}(${ACS}keys${BFP}(${ACS}\%{${ACS}\$self->{$pkg_us}{$an}${ACS}}${ACS})${ACS})${AO}==${AO}scalar${BFP}(${ACS}keys${BFP}(${ACS}\%would_delete)${ACS})${ACS})${AO}&&${AO}throw $ec${BFP}("ERROR: ${pkg}::delete$mb, list value may not be empty.");

EOF
    }

    # Method tail
    $fh->print(<<EOF);
${IND}# Delete values
${IND}my \$del${AO}=${AO}0;
${IND}foreach my \$val (\@_)${PBOC[1]}{
${IND}${IND}exists${BFP}(${ACS}\$self->{$pkg_us}{$an}{\$val}${ACS})${AO}||${AO}next;
${IND}${IND}delete${BFP}(${ACS}\$self->{$pkg_us}{$an}{\$val}${ACS});
${IND}${IND}\$del${AO}++;
${IND}}
${IND}return${BFP}(\$del);
}

EOF
}

sub write_delete_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('delete');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';
    my $empt = $self->is_allow_empty() ? '' : ' After deleting at least one element must remain.';
    my $exc = ' On error an exception C<' . $self->get_exception_class() . '> is thrown.';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}(ARRAY)

Delete elements from ${desc}.${empt} Returns the number of deleted elements.${exc}

EOF
}

sub write_exists_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $op = &{$MOF}('exists');
    my $mb = $self->get_method_base();
    my $pkg_us = $self->get_package_us();

    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

${IND}# Count occurences
${IND}my \$count${AO}=${AO}0;
${IND}foreach my \$val (\@_)${PBOC[1]}{
${IND}${IND}\$count${AO}+=${AO}exists${BFP}(${ACS}\$self->{$pkg_us}{$an}{\$val}${ACS});
${IND}}
${IND}return${BFP}(\$count);
}

EOF
}

sub write_exists_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('exists');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}(ARRAY)

Returns the count of items in C<ARRAY> that are in ${desc}.

EOF
}

sub write_keys_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $op = &{$MOF}('keys');
    my $mb = $self->get_method_base();
    my $pkg_us = $self->get_package_us();

    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

${IND}# Return all keys
${IND}return${BFP}(${ACS}keys${BFP}(${ACS}\%{${ACS}\$self->{$pkg_us}{$an}${ACS}}${ACS})${ACS});
}

EOF
}

sub write_keys_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('keys');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}()

Returns an C<ARRAY> containing the keys of ${desc}.

EOF
}

sub write_values_method {
    my $self = shift;
    my $fh = shift;

    my $an = $self->get_attribute_name();
    my $op = &{$MOF}('values');
    my $mb = $self->get_method_base();
    my $pkg_us = $self->get_package_us();

    $fh->print(<<EOF);
$SUB $op$mb${PBOC[0]}{
${IND}my \$self${AO}=${AO}shift;

${IND}if${BCP}(${ACS}scalar${BFP}(\@_)${ACS})${PBOC[1]}{
${IND}${IND}my \@ret${AO}=${AO}();
${IND}${IND}foreach my \$key (\@_)${PBOC[2]}{
${IND}${IND}${IND}exists${BFP}(${ACS}\$self->{$pkg_us}{$an}{\$key}${ACS})${AO}&&${AO}push${BFP}(${ACS}\@ret,${AC}\$self->{$pkg_us}{$an}{\$key}${ACS});
${IND}${IND}}
${IND}${IND}return${BFP}(\@ret);
${IND}}${PBCC[1]}else${PBOC[1]}{
${IND}${IND}# Return all values
${IND}${IND}return${BFP}(${ACS}values${BFP}(${ACS}\%{${ACS}\$self->{$pkg_us}{$an}${ACS}}${ACS})${ACS});
${IND}}
}

EOF
}

sub write_values_doc {
    my $self = shift;
    my $fh = shift;

    my $op = &{$MOF}('values');
    my $mb = $self->get_method_base();
    my $desc = defined( $self->get_short_description() ) ? $self->get_short_description() : 'not described option';

    $fh->print(<<EOF);
\=item $op${mb}${BFP}(${ACS}[${ACS}KEY_ARRAY${ACS}]${ACS})

Returns an C<ARRAY> containing the values of ${desc}. If C<KEY_ARRAY> contains one or more C<KEY>s the values related to the C<KEY>s are returned. If no C<KEY>s specified all values are returned.

EOF
}

