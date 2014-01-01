# $OpenBSD: Makefile,v 1.29 2014/01/01 20:46:29 naddy Exp $

COMMENT=	fast-light window manager

DISTNAME=	flwm-1.00
PKGNAME=	flwm-1.0.0
REVISION=	2
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DFL_INTERNALS -DFLTK_1_0_COMPAT \
		 -I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	x11/fltk

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext c m stdc++ fltk

NO_TEST=	Yes

.include <bsd.port.mk>
