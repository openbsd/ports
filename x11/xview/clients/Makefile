# $OpenBSD: Makefile,v 1.15 2002/03/21 21:25:57 espie Exp $

COMMENT=	"OpenLook applications and man pages"

PKGNAME=	xview-clients-${XVIEW_VERSION}
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz
CATEGORIES=	x11
NEED_VERSION=	1.515

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=
BUILD_DEPENDS=	::x11/xview/config ::x11/xview/lib:configure
LIB_DEPENDS=	xview.3,olgx::x11/xview/lib

WRKSRC=		${WRKDIST}/clients
USE_X11=	Yes
MAKE_ENV=	IMAKEINCLUDE=-I${LOCALBASE}/lib/X11/config

post-extract:
	mkdir -p ${WRKDIST}
	lndir `cd ${PORTSDIR}/x11/xview/lib && make show=WRKDIST` ${WRKDIST}

do-configure:
	cd ${WRKDIST} && $(MAKE_ENV) SUBDIRS=clients make Makefiles
	cd ${WRKDIST} && SUBDIRS=clients make depend

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/help
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKE_FILE} install.man

.include <bsd.port.mk>
