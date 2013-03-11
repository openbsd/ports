# $OpenBSD: Makefile,v 1.28 2013/03/11 11:46:09 espie Exp $

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

USE_GROFF =	Yes

LIB_DEPENDS=	x11/fltk

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext c m stdc++ fltk

NO_TEST=	Yes

.include <bsd.port.mk>
