COMMENT=		GUI to dvd+rw-tools and cdrecord

DISTNAME=		tkdvd-4.0.9
REVISION=		6

CATEGORIES=		sysutils
HOMEPAGE=		http://regis.damongeot.free.fr/tkdvd/
MAINTAINER=		Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE=		Yes

SITES=			${HOMEPAGE:=dl/}

MODULES=		x11/tk
MODTK_VERSION=		8.6

BUILD_DEPENDS=		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			x11/gtk+4,-guic \
			${MODTK_RUN_DEPENDS}

NO_TEST=		Yes
WRKDIST=		${WRKDIR}/tkdvd

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/install.tcl
	@${MODTCL_WISH_ADJ}  ${WRKSRC}/TkDVD.sh

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
