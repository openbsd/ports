# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:57 espie Exp $

COMMENT=	"OpenLook Toolkit libs, includes, and man pages"

PKGNAME=	xview-lib-${XVIEW_VERSION}
EXTRACT_ONLY=	
CATEGORIES=	x11
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::x11/xview/config ::x11/xview/config:build

post-extract:
	mkdir -p ${WRKDIST}
	lndir `cd ${PORTSDIR}/x11/xview/config && make show=WRKDIST` ${WRKDIST}
	
CONFIGURE_STYLE=imake
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

post-install:
	mv ${PREFIX}/man/cat1/xview.0 ${PREFIX}/man/cat7/xview.0

.include <bsd.port.mk>
