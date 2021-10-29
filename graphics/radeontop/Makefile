# $OpenBSD: Makefile,v 1.1.1.1 2021/10/29 21:00:42 sdk Exp $

COMMENT =	monitor GPU utilization for R600 and up

GH_ACCOUNT =	clbr
GH_PROJECT =	radeontop
GH_TAGNAME =	v1.3

SHARED_LIBS =	radeontop_xcb		0.0	# 1.3

CATEGORIES =	graphics

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3.0+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses drm_amdgpu drm intl m pciaccess pthread xcb xcb-dri2

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		textproc/intltool

MAKE_FLAGS =		amdgpu=1

MAKE_ENV =		MANDIR=man LDFLAGS="${LDFLAGS}"

USE_GMAKE =		Yes

NO_TEST =		Yes

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib -lintl

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
