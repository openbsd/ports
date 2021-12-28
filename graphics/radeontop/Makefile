# $OpenBSD: Makefile,v 1.2 2021/12/28 16:34:02 sdk Exp $

COMMENT =	monitor GPU utilization for R600 and up

GH_ACCOUNT =	clbr
GH_PROJECT =	radeontop
GH_TAGNAME =	v1.4

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

post-extract:
	sed -i "s/ver=unknown/ver=${GH_TAGNAME}-openbsd/" ${WRKSRC}/getver.sh

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
