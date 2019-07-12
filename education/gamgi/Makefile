# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:07 sthen Exp $

COMMENT=		General Atomistic Modelling Graphic Interface

V=			0.15.5
DISTNAME=		gamgi-all-${V}
PKGNAME=		${DISTNAME:S/-all//}
CATEGORIES=		education x11

HOMEPAGE=		http://www.gamgi.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://ftp.gamgi.org/gamgi/src/

USE_GMAKE=		Yes

WANTLIB += GL GLU X11 Xext Xi Xmu atk-1.0 c cairo expat freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pthread
WANTLIB += gdkglext-x11-1.0 gtkglext-x11-1.0

LIB_DEPENDS=		x11/gtkglext
RUN_DEPENDS=		graphics/netpbm

WRKDIST=		${WRKDIR}/gamgi${V}
WRKSRC= 		${WRKDIST}/src
MAKE_FILE=		${WRKSRC}/makefile
ALL_TARGET=		# This comment intentionally left senseless.

NO_TEST=		Yes

DOC_DIR=		${PREFIX}/share/doc/gamgi/
DATA_DIR=		${PREFIX}/share/gamgi/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make_local ${WRKSRC}/io/gamgi_io.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gamgi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR} ${DATA_DIR}
	${INSTALL_DATA} ${WRKDIST}/dat/all.xml ${PREFIX}/share/gamgi
	# Clean an empty directory.
	rm -fr ${WRKDIST}/dat/util/python/
	cd ${WRKDIST}/doc/ && umask 022 && pax -rw . ${DOC_DIR}
	cd ${WRKDIST}/dat/ && umask 022 && pax -rw . ${DATA_DIR}

.include <bsd.port.mk>
