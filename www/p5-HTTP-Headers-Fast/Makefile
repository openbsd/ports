# $OpenBSD: Makefile,v 1.6 2019/05/15 13:34:58 cwen Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		HTTP-Headers-Fast-0.22
CATEGORIES =		www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Requires \
			www/p5-HTTP-Message \
			www/p5-URI

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
