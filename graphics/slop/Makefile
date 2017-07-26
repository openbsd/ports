# $OpenBSD: Makefile,v 1.15 2017/07/26 22:45:24 sthen Exp $

V =		6.3.38
COMMENT =	query for a selection and print to stdout (select operation)
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}
REVISION =	0

SHARED_LIBS =   slopy   1.0     # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xrender c m pthread ${LIBCXX}

MODULES =	devel/cmake

COMPILER =	gcc

BUILD_DEPENDS +=	graphics/glm

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN:BOOL=Off

NO_TEST =	Yes

.include <bsd.port.mk>
