# $OpenBSD: Makefile,v 1.1.1.1 2000/04/02 15:25:13 espie Exp $

PKGNAME=	xview-lib-${XVIEW_VERSION}
EXTRACT_ONLY=	
CATEGORIES=	x11
NEED_VERSION=	1.230

BUILD_DEPENDS=	${LOCALBASE}/lib/X11/config/XView.cf::x11/xview/config
DEPENDS=	x11/xview/config:build

post-extract:
	mkdir -p ${WRKDIST}
	lndir `cd ${PORTSDIR}/x11/xview/config && make show VARNAME=WRKDIST` ${WRKDIST}
	
PREFIX=	${X11BASE}
USE_IMAKE=	Yes
FAKE=		Yes

.include <bsd.port.mk>
