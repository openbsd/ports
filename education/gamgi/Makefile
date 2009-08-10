# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:09 kili Exp $

COMMENT=		General Atomistic Modelling Graphic Interface

V=			0.13.13
DISTNAME=		gamgi-all-${V}
PKGNAME=		${DISTNAME:S/-all//}p0
CATEGORIES=		education x11

HOMEPAGE=		http://www.gamgi.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gamgi.org/gamgi/src/

WANTLIB += GL GLU X11 Xext Xi Xmu atk-1.0 c cairo expat freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pthread-stubs xcb

USE_GMAKE=		Yes
USE_X11=		Yes

LIB_DEPENDS=		gdkglext-x11-1.0,gtkglext-x11-1.0::x11/gtkglext
RUN_DEPENDS=		::graphics/netpbm

WRKDIST=		${WRKDIR}/gamgi${V}/
WRKSRC= 		${WRKDIST}/src/
MAKE_FILE=		${WRKSRC}/makefile
ALL_TARGET=		# empty

NO_REGRESS=		Yes

DOC_DIR=		${PREFIX}/share/doc/gamgi/
DATA_DIR=		${PREFIX}/share/gamgi/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/make_local

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gamgi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR} ${DATA_DIR}
	${INSTALL_DATA} ${WRKDIST}/dat/all.xml ${PREFIX}/share/gamgi
	# Clean an empty directory and swap file.
	rm -fr ${WRKDIST}/dat/util/python/ \
		${WRKDIST}/doc/project/.links_scientific.html.swp
	cd ${WRKDIST}/doc/ && umask 022 && pax -rw . ${DOC_DIR}
	cd ${WRKDIST}/dat/ && umask 022 && pax -rw . ${DATA_DIR}

.include <bsd.port.mk>
