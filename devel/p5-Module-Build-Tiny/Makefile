# $OpenBSD: Makefile,v 1.5 2017/08/15 14:44:25 afresh1 Exp $

COMMENT =	tiny replacement for Module::Build

DISTNAME =	Module-Build-Tiny-0.039
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-ExtUtils-Config \
		devel/p5-ExtUtils-Helpers \
		devel/p5-ExtUtils-InstallPaths

# This module uses itself to install itself, so runs while it builds
BUILD_DEPENDS =	${RUN_DEPENDS}

do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
	        --destdir "${PREFIX}" \
	        --install_path lib="libdata/perl5/site_perl" \
	        --install_path libdoc="man/man3p"

.include <bsd.port.mk>
