# $OpenBSD: Makefile,v 1.2 2016/01/11 10:34:21 sthen Exp $

COMMENT=	regular expressions for handling British postcodes

MODULES=	cpan
DISTNAME=	Geo-UK-Postcode-Regex-0.015
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install \
		devel/p5-Module-Build-Tiny
TEST_DEPENDS=	devel/p5-Test-Exception \
		devel/p5-Clone

CONFIGURE_STYLE= modbuild

# Module::Build::Tiny like "--" prefix for CLI options
do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
		--destdir "${PREFIX}" \
		--install_path lib="libdata/perl5/site_perl" \
		--install_path=libdoc="man/man3p" \
		--install_path=bindoc="man/man1" \
		--install_path script="bin"

.include <bsd.port.mk>
