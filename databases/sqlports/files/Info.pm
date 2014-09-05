# $OpenBSD: Info.pm,v 1.15 2014/09/05 14:45:02 jasper Exp $
#
# Copyright (c) 2012 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# example script that shows how to store all variable values into a
# database, using SQLite for that purpose.
#
# usage: cd /usr/ports && make dump-vars |mksqlitedb

use strict;
use warnings;
use Var;

package Info;
our $vars = {
    AUTOCONF_VERSION => 'AutoVersionVar',
    AUTOMAKE_VERSION => 'AutoVersionVar',
    BROKEN => 'BrokenVar',
    BUILD_DEPENDS => 'BuildDependsVar',
    CATEGORIES => 'CategoriesVar',
    COMES_WITH => 'DefinedVar',
    COMMENT => 'AnyVar',
    CONFIGURE_ARGS => 'ConfigureArgsVar',
    CONFIGURE_STYLE => 'ConfigureVar',
    DESCR => 'DescrVar',
    DISTFILES => 'AnyVar',
    DPB_PROPERTIES => 'DPBPropertiesVar',
    PATCHFILES => 'AnyVar',
    DISTNAME => 'AnyVar',
    DIST_SUBDIR => 'DefinedVar',
    EPOCH => 'AnyVar',
    FLAVORS => 'FlavorsVar',
    FULLPKGNAME => 'FullpkgnameVar',
    GH_ACCOUNT => 'DefinedVar',
    GH_COMMIT => 'DefinedVar',
    GH_PROJECT => 'DefinedVar',
    GH_TAGNAME => 'DefinedVar',
    HOMEPAGE => 'AnyVar',
    IGNORE => 'DefinedVar',
    IS_INTERACTIVE => 'AnyVar',
    LIB_DEPENDS => 'LibDependsVar',
    MAINTAINER=> 'EmailVar',
    MASTER_SITES => 'MasterSitesVar',
    MASTER_SITES0 => 'MasterSitesVar',
    MASTER_SITES1 => 'MasterSitesVar',
    MASTER_SITES2 => 'MasterSitesVar',
    MASTER_SITES3 => 'MasterSitesVar',
    MASTER_SITES4=> 'MasterSitesVar',
    MASTER_SITES5 => 'MasterSitesVar',
    MASTER_SITES6 => 'MasterSitesVar',
    MASTER_SITES7 => 'MasterSitesVar',
    MASTER_SITES8 => 'MasterSitesVar',
    MASTER_SITES9=> 'MasterSitesVar',
    MODULES => 'ModulesVar',
    MULTI_PACKAGES => 'MultiVar',
    NO_BUILD => 'YesNoVar',
    NO_TEST => 'YesNoVar',
    NOT_FOR_ARCHS => 'NotForArchListVar',
    ONLY_FOR_ARCHS => 'OnlyForArchListVar',
    PERMIT_DISTFILES_FTP=> 'YesKeyVar',
    PERMIT_PACKAGE_CDROM => 'YesKeyVar',
    PERMIT_PACKAGE_FTP=> 'YesKeyVar',
    PKGNAME => 'AnyVar',
    PKGSPEC => 'AnyVar',
    PREFIX => 'PrefixKeyVar',
    PKG_ARCH => 'ArchKeyVar',
    PORTROACH => 'DefinedVar',
    PSEUDO_FLAVOR => 'AnyVar',
    PSEUDO_FLAVORS => 'PseudoFlavorsVar',
    TEST_DEPENDS => 'TestDependsVar',
    TEST_IS_INTERACTIVE => 'AnyVar',
    REVISION => 'AnyVar',
    README => 'ReadmeVar',
    RUN_DEPENDS => 'RunDependsVar',
    SEPARATE_BUILD => 'YesKeyVar',
    SHARED_LIBS => 'SharedLibsVar',
    SHARED_ONLY => 'YesNoVar',
    STATIC_PLIST => 'StaticPlistVar',
    SUBPACKAGE => 'DefinedVar',
    SUPDISTFILES => 'AnyVar',
    TARGETS => 'TargetsVar',
    USE_GMAKE => 'YesNoVar',
    USE_GROFF => 'YesNoVar',
    USE_LIBTOOL => 'YesNoGnuVar',
    WANTLIB => 'WantlibVar',
    # XXX those variables are part of the dump for dpb, but really should
    # not end up in sqlports. But make sure we know about them.
    BUILD_PACKAGES => 'IgnoredVar',
    CHECKSUM_FILE => 'IgnoredVar',
    FETCH_MANUALLY => 'IgnoredVar',
    FLAVOR => 'IgnoredVar',
    MISSING_FILES => 'IgnoredVar',
};

our $unknown = {};

sub new
{
	my ($class, $p) = @_;
	bless {path => $p, vars => {}}, $class;
}

sub create
{
	my ($self, $var, $value, $arch, $path) = @_;
	my $k = $var;
	if (defined $arch) {
		$k .= "-$arch";
	}
	if (defined $vars->{$var}) {
		$self->{vars}{$k} = $vars->{$var}->new($var, $value, $arch, 
		    $path);
	} else {
		$unknown->{$k} //= $path;
	}
}

sub variables
{
	my $self = shift;
	return values %{$self->{vars}};
}

sub value
{
	my ($self, $name) = @_;
	if (defined $self->{vars}{$name}) {
		return $self->{vars}{$name}->value;
	} else {
		return "";
	}
}

sub reclaim
{
	my $self = shift;
	my $n = {};
	for my $k (qw(SUBPACKAGE FLAVOR)) {
		$n->{$k} = $self->{vars}{$k};
	}
	$self->{vars} = $n;
}

1;
