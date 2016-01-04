# $OpenBSD: Makefile,v 1.4 2016/01/04 08:20:04 benoit Exp $

COMMENT=	compile .cgi scripts to a code reference

MODULES=	cpan
DISTNAME =	CGI-Compile-0.21
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Module-Build-Tiny>=0.039

RUN_DEPENDS =	devel/p5-File-pushd

TEST_DEPENDS =	devel/p5-Test-NoWarnings

do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
		--destdir "${PREFIX}" \
		--install_path lib="libdata/perl5/site_perl" \
		--install_path libdoc="man/man3p"

.include <bsd.port.mk>
