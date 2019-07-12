# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:38 sthen Exp $

COMMENT =		interface for HTTP specific Net::IMP plugins

DISTNAME =		Net-IMP-HTTP-0.523

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
