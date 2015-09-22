# $OpenBSD: Makefile,v 1.9 2015/09/22 18:38:10 pascal Exp $

COMMENT =		Color Transformation Language interpreter

V =			1.5.2
DISTNAME =		ctl-$V

SHARED_LIBS +=  IlmCtl               1.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           1.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           1.0      # .2.0
SHARED_LIBS +=  IlmImfCtl            1.0      # 1.5

CATEGORIES =		graphics lang
HOMEPAGE =		https://github.com/ampas/CTL/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half Iex IexMath IlmImf IlmThread Imath c m pthread
WANTLIB += stdc++ tiff

GH_ACCOUNT =		ampas
GH_PROJECT =		ctl
GH_TAGNAME =		ctl-${V}
MASTER_SITES =		${MASTER_SITES_GITHUB}

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			graphics/tiff

WRKDIST =		${WRKDIR}/CTL-ctl-$V

.include <bsd.port.mk>
