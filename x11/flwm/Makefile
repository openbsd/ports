# $OpenBSD: Makefile,v 1.37 2019/07/12 20:51:11 sthen Exp $

COMMENT=	fast-light window manager

DISTNAME=	flwm-1.02
PKGNAME=	flwm-1.0.2
REVISION=	2
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DFL_INTERNALS -DFLTK_1_0_COMPAT \
		 -I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	x11/fltk

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext c fltk m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

.include <bsd.port.mk>
