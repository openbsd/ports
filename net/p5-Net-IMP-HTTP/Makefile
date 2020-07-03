# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:34 sthen Exp $

COMMENT =		interface for HTTP specific Net::IMP plugins

DISTNAME =		Net-IMP-HTTP-0.523
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		net/p5-Net-IMP>=0.617 \
			net/p5-Net-Inspect>=0.27
TEST_DEPENDS =		www/p5-HTTP-Message \
			graphics/ImageMagick

.include <bsd.port.mk>
