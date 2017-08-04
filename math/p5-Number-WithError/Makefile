# $OpenBSD: Makefile,v 1.2 2017/08/04 09:27:03 bluhm Exp $

COMMENT =	numbers with error propagation and scientific rounding

DISTNAME =	Number-WithError-1.01
REVISION =	0

CATEGORIES =	math

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-prefork>=1.00 \
                        devel/p5-Params-Util>=0.10
TEST_DEPENDS =		devel/p5-Test-LectroTest \
			devel/p5-Test-Pod-Coverage>=1.00 \
			devel/p5-Test-Pod>=1.00

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

# use system Module::Install instead of a private version in each perl module
post-extract:
	rm -r ${WRKSRC}/inc

.include <bsd.port.mk>
