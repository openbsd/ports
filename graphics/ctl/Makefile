# $OpenBSD: Makefile,v 1.14 2018/10/24 14:28:05 sthen Exp $

COMMENT =		Color Transformation Language interpreter

GH_ACCOUNT =		ampas
GH_PROJECT =		CTL
GH_TAGNAME =		ctl-1.5.2
DISTNAME =		${GH_TAGNAME}
REVISION =		2

SHARED_LIBS +=  IlmCtl               1.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           1.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           1.0      # .2.0
SHARED_LIBS +=  IlmImfCtl            1.0      # 1.5

CATEGORIES =		graphics lang
HOMEPAGE =		https://github.com/ampas/CTL/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half Iex IexMath IlmImf IlmThread Imath c m pthread
WANTLIB += ${COMPILER_LIBCXX} tiff

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			graphics/tiff

.include <bsd.port.mk>
