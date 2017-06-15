# $OpenBSD: Makefile,v 1.14 2017/06/15 18:03:10 rsadowski Exp $

V =		6.3.38
COMMENT =	query for a selection and print to stdout (select operation)
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

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
