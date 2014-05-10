# $OpenBSD: Makefile,v 1.1.1.1 2014/05/10 01:54:20 afresh1 Exp $

COMMENT =	Test for warnings and the lack of them

DISTNAME =	Test-Warnings-0.014
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =	devel/p5-Module-Build-Tiny>=0.035

TEST_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Test-Harness>=3.27 \
		devel/p5-Test-Tester>=0.108


do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
	        --destdir "${PREFIX}" \
	        --install_path lib="libdata/perl5/site_perl" \
	        --install_path libdoc="man/man3p"

.include <bsd.port.mk>
