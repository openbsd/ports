# $OpenBSD: Makefile,v 1.31 2015/04/27 18:36:47 rpe Exp $

COMMENT=	fast-light window manager

DISTNAME=	flwm-1.02
PKGNAME=	flwm-1.0.2
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DFL_INTERNALS -DFLTK_1_0_COMPAT \
		 -I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	x11/fltk

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext c fltk m pthread stdc++

NO_TEST=	Yes

.include <bsd.port.mk>
