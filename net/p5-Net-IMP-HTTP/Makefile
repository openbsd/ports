# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:53 naddy Exp $

COMMENT =		interface for HTTP specific Net::IMP plugins

DISTNAME =		Net-IMP-HTTP-0.523

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		net/p5-Net-IMP>=0.617 \
			net/p5-Net-Inspect>=0.27
TEST_DEPENDS =		www/p5-HTTP-Message \
			graphics/ImageMagick

.include <bsd.port.mk>
