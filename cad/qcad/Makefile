# $OpenBSD: Makefile,v 1.18 2010/06/07 20:08:09 kili Exp $

COMMENT=	Qt-based 2D CAD system

V=		2.0.5.0
DISTNAME=	qcad-${V}-1-community.src
PKGNAME=	qcad-${V}p1
CATEGORIES=	cad graphics

HOMEPAGE=	http://www.ribbonsoft.com/qcad.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread stdc++

MASTER_SITES=	http://www.ribbonsoft.com/archives/qcad/

MODULES=	x11/qt3
MODQT_MT=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

PORTHOME=	${WRKDIR}

MAKE_ENV+=	QTDIR=${MODQT_LIBDIR} \
		MAKE=${MAKE_PROGRAM}

SUBST_VARS=	CXXFLAGS LOCALBASE MODQT_LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mkspecs/defs.pro \
		${WRKSRC}/qcadlib/src/engine/rs_system.h \
		${WRKSRC}/qcadlib/src/engine/rs_system.cpp \
		${WRKSRC}/qcad/src/qc_applicationwindow.cpp

do-build:
	cd ${WRKBUILD}/scripts && \
		${SETENV} ${MAKE_ENV} /bin/sh ./build_qcad.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/qcad/qcad ${PREFIX}/bin
.for dir in fonts patterns qm
	${INSTALL_DATA_DIR} ${PREFIX}/share/qcad/${dir}
	${INSTALL_DATA} ${WRKSRC}/qcad/${dir}/* ${PREFIX}/share/qcad/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qcad
	${INSTALL_DATA} ${WRKSRC}/qcad/data/* ${PREFIX}/share/examples/qcad
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qcad
	cd ${WRKSRC}/qcad/doc && tar cf - . | \
		tar -C ${PREFIX}/share/doc/qcad -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/qcad/*

.include <bsd.port.mk>
