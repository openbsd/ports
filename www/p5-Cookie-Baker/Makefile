# $OpenBSD: Makefile,v 1.4 2019/05/30 01:02:48 cwen Exp $

COMMENT =		cookie string generator / parser

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Cookie-Baker-0.10
CATEGORIES =		www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-URI

TEST_DEPENDS =		devel/p5-Test-Time

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
