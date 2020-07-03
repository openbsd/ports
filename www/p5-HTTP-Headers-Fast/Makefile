# $OpenBSD: Makefile,v 1.8 2020/07/03 21:46:02 sthen Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		HTTP-Headers-Fast-0.22
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Requires \
			www/p5-HTTP-Message \
			www/p5-URI

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
