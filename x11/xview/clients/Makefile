# $OpenBSD: Makefile,v 1.3 2000/04/02 22:43:11 espie Exp $

PKGNAME=	xview-clients-${XVIEW_VERSION}
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz
CATEGORIES=	x11
NEED_VERSION=	1.230

EXTRACT_ONLY=
BUILD_DEPENDS=	${LOCALBASE}/lib/X11/config/XView.cf::x11/xview/config \
		/nonexistent::x11/xview/lib:configure
LIB_DEPENDS=	xview.3.::x11/xview/lib

WRKSRC=		${WRKDIST}/clients
USE_X11=	Yes
PREFIX=		${X11BASE}
FAKE=		Yes

post-extract:
	mkdir -p ${WRKDIST}
	lndir `cd ${PORTSDIR}/x11/xview/lib && make show VARNAME=WRKDIST` ${WRKDIST}

do-configure:
	cd ${WRKDIST} && make SUBDIRS=clients Makefiles
	cd ${WRKDIST}  && make SUBDIRS=clients depend

pre-install:
	@mkdir -p ${PREFIX}/lib/help
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKE_FILE} install.man

.include <bsd.port.mk>
