# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:39 sthen Exp $

COMMENT =	library for handling OpenType Fonts
DISTNAME =	libotf-0.9.16

CATEGORIES =	devel

SHARED_LIBS +=  otf                  0.0      # 1.0

HOMEPAGE =	https://www.nongnu.org/m17n/
MAINTAINER =	Eric Brown <brown@fastmail.com>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c freetype z

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=m17n/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
