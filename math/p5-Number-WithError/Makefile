# $OpenBSD: Makefile,v 1.1.1.1 2017/01/05 23:03:44 bluhm Exp $

COMMENT =	numbers with error propagation and scientific rounding

DISTNAME =	Number-WithError-1.01

CATEGORIES =	math

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Module-Install>=1.00
RUN_DEPENDS =		devel/p5-prefork>=1.00 \
                        devel/p5-Params-Util>=0.10
TEST_DEPENDS =		devel/p5-Test-LectroTest \
			devel/p5-Test-Pod-Coverage>=1.00 \
			devel/p5-Test-Pod>=1.00

PKG_ARCH =		*

# use system Module::Install instead of a private version in each perl module
post-extract:
	rm -r ${WRKSRC}/inc

.include <bsd.port.mk>
