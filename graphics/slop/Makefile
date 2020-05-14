# $OpenBSD: Makefile,v 1.22 2020/05/14 19:44:08 rsadowski Exp $

# icu4c namespace problem when mixing gcc 4.2 and a c++11 compiler:
# undefined reference to `_ZN6icu_5713UnicodeStringC1EOS0_'
ONLY_FOR_ARCHS=		${CLANG_ARCHS}

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v7.5

COMMENT =	query for a selection and print to stdout (select operation)
CATEGORIES =	graphics x11

SHARED_LIBS =   slopy   3.0     # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE SM X11 Xext Xrender
WANTLIB += c icuuc m

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS +=	graphics/glm

LIB_DEPENDS =		graphics/glew \
			textproc/icu4c

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

NO_TEST =	Yes

.include <bsd.port.mk>
