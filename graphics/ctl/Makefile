# $OpenBSD: Makefile,v 1.17 2019/11/10 15:32:56 ajacoutot Exp $

COMMENT =		Color Transformation Language interpreter

GH_ACCOUNT =		ampas
GH_PROJECT =		CTL
GH_TAGNAME =		ctl-1.5.2
DISTNAME =		${GH_TAGNAME}
REVISION =		4

SHARED_LIBS +=  IlmCtl               1.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           1.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           1.0      # .2.0
SHARED_LIBS +=  IlmImfCtl            1.0      # 1.5

CATEGORIES =		graphics lang
HOMEPAGE =		https://github.com/ampas/CTL/

# 3-clause BSD license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IexMath-2_4 IlmImf-2_4
WANTLIB += IlmThread-2_4 Imath-2_4 c m tiff

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			graphics/tiff

.include <bsd.port.mk>
