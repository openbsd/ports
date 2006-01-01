# $OpenBSD: Makefile,v 1.17 2006/01/01 20:57:03 naddy Exp $

COMMENT=	"OpenLook Toolkit libs, includes, and man pages"

PKGNAME=	xview-lib-${XVIEW_VERSION}p1
SHARED_LIBS=	olgx	3.2 \
		xview	3.2
EXTRACT_ONLY=	
CATEGORIES=	x11

BUILD_DEPENDS=	::x11/xview/config ::x11/xview/config:build

post-patch:
	ln -s ${WRKDIR}/x11/xview/config/${DISTNAME} ${WRKDIST}

CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config
MAKE_FLAGS=	SOOLGXREV=${LIBolgx_VERSION} \
		SOXVIEWREV=${LIBxview_VERSION}
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} ${MAKE_FLAGS}

NO_REGRESS=	Yes

post-install:
	mv ${PREFIX}/man/cat1/xview.0 ${PREFIX}/man/cat7/xview.0

.include <bsd.port.mk>
