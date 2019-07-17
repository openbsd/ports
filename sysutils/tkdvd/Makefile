# $OpenBSD: Makefile,v 1.16 2019/07/17 14:39:43 danj Exp $

COMMENT=		GUI to dvd+rw-tools and cdrecord

DISTNAME=		tkdvd-4.0.9
REVISION =		4
CATEGORIES=		sysutils

HOMEPAGE=		http://regis.damongeot.free.fr/tkdvd/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE:=dl/}

WRKDIST=		${WRKDIR}/tkdvd

MODULES=		x11/tk

BUILD_DEPENDS=		${MODTCL_RUN_DEPENDS}
RUN_DEPENDS=		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			x11/gtk+3,-guic \
			${MODTK_RUN_DEPENDS}

NO_TEST=		Yes

pre-build:
			${SUBST_CMD} ${WRKSRC}/{install.tcl,TkDVD.sh}

do-build:
	cd ${WRKDIST} && ./install.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdvd-install.sh ${PREFIX}/bin/tkdvd
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/32x32/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/icons/*-32.png ${PREFIX}/share/icons/hicolor/32x32/apps
	${INSTALL_DATA} ${WRKSRC}/icons/*-48.png ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/tkdvd
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/tkdvd

.include <bsd.port.mk>
