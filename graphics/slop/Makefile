# $OpenBSD: Makefile,v 1.11 2017/04/18 11:14:10 rsadowski Exp $

V =		5.3.37
COMMENT =	query for a selection and print to stdout (select operation)
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

SHARED_LIBS =   slopy   0.0     # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 Xext Xrender c m pthread ${LIBCXX}

MODULES =	devel/cmake \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	${GCC3_ARCHS} ${GCC4_ARCHS}

BUILD_DEPENDS +=	graphics/glm

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN:BOOL=Off

NO_TEST =	Yes

.include <bsd.port.mk>
