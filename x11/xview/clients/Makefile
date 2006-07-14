# $OpenBSD: Makefile,v 1.20 2006/07/14 21:17:15 steven Exp $

COMMENT=	"OpenLook applications and man pages"

PKGNAME=	xview-clients-${XVIEW_VERSION}
CATEGORIES=	x11

EXTRACT_ONLY=
BUILD_DEPENDS=	::x11/xview/config ::x11/xview/lib:configure
LIB_DEPENDS=	xview.3,olgx::x11/xview/lib

WRKDIST=	${WRKDIR}/x11/xview/lib/${DISTNAME}
WRKSRC=		${WRKDIST}/clients
USE_X11=	Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

WANTLIB=	X11 Xext c m 

do-configure:
	cd ${WRKDIST} && $(MAKE_ENV) SUBDIRS=clients make Makefiles
	cd ${WRKDIST} && SUBDIRS=clients make depend

NO_REGRESS=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/help
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKE_FILE} install.man

.include <bsd.port.mk>
