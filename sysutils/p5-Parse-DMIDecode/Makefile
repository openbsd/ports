# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:47 sthen Exp $

COMMENT =	interface to SMBIOS using dmidecode

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Parse-DMIDecode-0.03
CATEGORIES =	sysutils

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		NICOLAW
CONFIGURE_STYLE =	modbuild
CONFIGURE_ENV =		AUTOMATED_TESTING=Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS =	${TEST_DEPENDS} \
		sysutils/p5-File-Which \
		devel/p5-Test-Deep
RUN_DEPENDS =	sysutils/dmidecode \
		sysutils/p5-File-Which

.include <bsd.port.mk>
