# $OpenBSD: Makefile,v 1.6 2020/02/06 13:29:23 benoit Exp $

COMMENT =		cookie string generator / parser

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Cookie-Baker-0.11
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-URI

TEST_DEPENDS =		devel/p5-Test-Time

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
