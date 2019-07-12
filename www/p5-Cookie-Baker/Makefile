# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:52 sthen Exp $

COMMENT =		cookie string generator / parser

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Cookie-Baker-0.10
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-URI

TEST_DEPENDS =		devel/p5-Test-Time

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
