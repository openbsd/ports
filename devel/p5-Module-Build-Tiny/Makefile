COMMENT =	tiny replacement for Module::Build

DISTNAME =	Module-Build-Tiny-0.047
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-ExtUtils-Config>=0.003 \
		devel/p5-ExtUtils-Helpers>=0.020 \
		devel/p5-ExtUtils-InstallPaths>=0.002

# This module uses itself to install itself, so runs while it builds
BUILD_DEPENDS =	${RUN_DEPENDS}

do-install:
	@cd ${WRKSRC} && ${MAKE_ENV} perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
	        --destdir "${PREFIX}" \
	        --install_path lib="libdata/perl5/site_perl" \
	        --install_path libdoc="man/man3p"

.include <bsd.port.mk>
