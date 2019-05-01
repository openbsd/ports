# $OpenBSD: Makefile,v 1.3 2019/05/01 19:57:07 sthen Exp $

COMMENT =		cookie string generator / parser

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Cookie-Baker-0.06
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-URI

TEST_DEPENDS =		devel/p5-Test-Time \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
