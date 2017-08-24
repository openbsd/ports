# $OpenBSD: Makefile,v 1.17 2017/08/24 09:45:23 sthen Exp $

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v6.3.48
REVISION =	0

COMMENT =	query for a selection and print to stdout (select operation)
CATEGORIES =	graphics x11

SHARED_LIBS =   slopy   2.0     # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE SM X11 Xext Xrender
WANTLIB += c icuuc m

MODULES =		devel/cmake

COMPILER =		gcc

BUILD_DEPENDS +=	graphics/glm

LIB_DEPENDS =		graphics/glew \
			textproc/icu4c

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN:BOOL=Off

NO_TEST =	Yes

.include <bsd.port.mk>
