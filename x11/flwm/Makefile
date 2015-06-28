# $OpenBSD: Makefile,v 1.32 2015/06/28 13:36:09 bcallah Exp $

COMMENT=	fast-light window manager

DISTNAME=	flwm-1.02
PKGNAME=	flwm-1.0.2
REVISION=	0
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
