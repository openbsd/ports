# $OpenBSD: Makefile,v 1.5 2019/02/25 11:55:38 sthen Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		HTTP-Headers-Fast-0.20
REVISION =		0
CATEGORIES =		www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Requires \
			www/p5-HTTP-Message \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
