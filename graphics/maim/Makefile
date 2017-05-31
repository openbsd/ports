# $OpenBSD: Makefile,v 1.17 2017/05/31 08:08:16 espie Exp $

V =		4.4.62
COMMENT =	desktop screenshot utility (make image)
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE SM X11 Xext Xfixes Xrandr c jpeg m png pthread
WANTLIB += slopy z ${LIBCXX}

MODULES =	devel/cmake

COMPILER =	gcc

BUILD_DEPENDS =		graphics/glm

LIB_DEPENDS +=		graphics/jpeg \
			graphics/png \
			graphics/slop

CONFIGURE_ARGS =	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN=False

NO_TEST =	Yes

.include <bsd.port.mk>
