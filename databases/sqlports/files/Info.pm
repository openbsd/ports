# $OpenBSD: Info.pm,v 1.32 2019/11/11 20:44:39 espie Exp $
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
    COMPILER_LINKS => 'CompilerLinksVar',
    CONFIGURE_ARGS => 'ConfigureArgsVar',
    CONFIGURE_STYLE => 'ConfigureVar',
    DEBUG_CONFIGURE_ARGS => 'ConfigureArgsVar',
    DEBUG_PACKAGES => 'MultiVar',
    DESCR => 'DescrVar',
    DISTFILES => 'SupdistfilesVar',
    DPB_PROPERTIES => 'DPBPropertiesVar',
    PATCHFILES => 'PatchfilesVar',
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
    MAKEFILE_LIST => 'FilesListVar',
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
    PERMIT_DISTFILES=> 'YesKeyVar',
    PERMIT_PACKAGE=> 'YesKeyVar',
    PKGNAME => 'AnyVar',
    PKGSPEC => 'AnyVar',
    PKGSTEM => 'AnyVar',
    PREFIX => 'PrefixKeyVar',
    PKG_ARCH => 'ArchKeyVar',
    PORTROACH => 'DefinedVar',
    PORTROACH_COMMENT => 'DefinedVar',
    PSEUDO_FLAVOR => 'AnyVar',
    PSEUDO_FLAVORS => 'PseudoFlavorsVar',
    TEST_DEPENDS => 'TestDependsVar',
    TEST_IS_INTERACTIVE => 'AnyVar',
    REVISION => 'AnyVar',
    README => 'ReadmeVar',
    RUN_DEPENDS => 'RunDependsVar',
    SEPARATE_BUILD => 'YesKeyVar',
    SHARED_LIBS => 'SharedLibsVar',
    STATIC_PLIST => 'StaticPlistVar',
    SUBPACKAGE => 'DefinedVar',
    SUBST_VARS => 'SubstVar',
    SUPDISTFILES => 'SupdistfilesVar',
    TARGETS => 'TargetsVar',
    UPDATE_PLIST_ARGS => 'DefinedVar',
    USE_GMAKE => 'YesNoVar',
    USE_GROFF => 'YesNoVar',
    USE_LIBTOOL => 'YesNoGnuVar',
    USE_WXNEEDED => 'YesNoSpecialVar',
    COMPILER => 'DefinedVar',
    COMPILER_LANGS => 'DefinedVar',
    WANTLIB => 'WantlibVar',
    FIX_EXTRACT_PERMISSIONS => 'YesNoVar',
    USE_LLD => 'YesNoVar',
    PKGPATHS => 'PkgPathsVar',
    # XXX those variables are part of the dump for dpb, but really should
    # not end up in sqlports. But make sure we know about them.
    BUILD_PACKAGES => 'IgnoredVar',
    CHECKSUM_FILE => 'IgnoredVar',
    FETCH_MANUALLY => 'IgnoredVar',
    FLAVOR => 'IgnoredVar',
    MISSING_FILES => 'IgnoredVar',
};

my @indexed = qw(FULLPKGNAME RUN_DEPENDS LIB_DEPENDS IGNORE
    COMMENT PKGNAME ONLY_FOR_ARCHS NOT_FOR_ARCHS PKGSPEC PKGSTEM PREFIX
    PERMIT_PACKAGE_FTP PERMIT_PACKAGE_CDROM WANTLIB CATEGORIES DESCR
    EPOCH REVISION STATIC_PLIST PKG_ARCH);

my $indexed = {map {($_, 1)} @indexed};
our $unknown = {};

sub is_indexed
{
	my ($class, $name) = @_;
	return $indexed->{$name};
}

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
