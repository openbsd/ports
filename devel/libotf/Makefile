# $OpenBSD: Makefile,v 1.1.1.1 2019/03/26 16:44:12 sthen Exp $

COMMENT =	library for handling OpenType Fonts
DISTNAME =	libotf-0.9.16

CATEGORIES =	devel

SHARED_LIBS +=  otf                  0.0      # 1.0

HOMEPAGE =	https://www.nongnu.org/m17n/
MAINTAINER =	Eric Brown <brown@fastmail.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c freetype z

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=m17n/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
