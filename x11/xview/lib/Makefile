# $OpenBSD: Makefile,v 1.13 2002/10/29 19:49:00 naddy Exp $

COMMENT=	"OpenLook Toolkit libs, includes, and man pages"

PKGNAME=	xview-lib-${XVIEW_VERSION}
EXTRACT_ONLY=	
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::x11/xview/config ::x11/xview/config:build

post-patch:
	ln -s ${WRKDIR}/x11/xview/config/${DISTNAME} ${WRKDIST}

CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

NO_REGRESS=	Yes

post-install:
	mv ${PREFIX}/man/cat1/xview.0 ${PREFIX}/man/cat7/xview.0

.include <bsd.port.mk>
