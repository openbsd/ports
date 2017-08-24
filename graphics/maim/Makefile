# $OpenBSD: Makefile,v 1.22 2017/08/24 09:45:23 sthen Exp $

V =		5.4.65
REVISION =	0
COMMENT =	desktop screenshot utility (make image)
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL ICE SM X11 Xcomposite Xext Xfixes
WANTLIB += Xrandr Xrender c icuuc jpeg m png slopy z

MODULES =		devel/cmake

COMPILER =		gcc

BUILD_DEPENDS =		graphics/glm

LIB_DEPENDS +=		graphics/jpeg \
			graphics/png \
			graphics/slop \
			textproc/icu4c

CONFIGURE_ARGS =	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN=False

NO_TEST =	Yes

.include <bsd.port.mk>
