# $OpenBSD: Makefile,v 1.15 2004/12/20 14:47:42 espie Exp $

COMMENT=	"OpenLook Toolkit libs, includes, and man pages"

PKGNAME=	xview-lib-${XVIEW_VERSION}p0
EXTRACT_ONLY=	
CATEGORIES=	x11

BUILD_DEPENDS=	::x11/xview/config ::x11/xview/config:build

post-patch:
	ln -s ${WRKDIR}/x11/xview/config/${DISTNAME} ${WRKDIST}

CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

NO_REGRESS=	Yes

post-install:
	mv ${PREFIX}/man/cat1/xview.0 ${PREFIX}/man/cat7/xview.0

.include <bsd.port.mk>
