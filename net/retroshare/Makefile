# $OpenBSD: Makefile,v 1.4 2014/04/21 19:10:27 stsp Exp $

SHARED_ONLY =		Yes
COMMENT =		secure decentralised communication platform
V = 			0.5.5c
DISTNAME =		retroshare_0.5.5-0.7068
PKGNAME =		retroshare-${V}
CATEGORIES =		net security
HOMEPAGE =		http://retroshare.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 	ICE QtGui QtMultimedia QtNetwork QtScript QtXml SM
WANTLIB += 	X11 Xext Xi Xinerama Xrender bz2 c crypto curl fontconfig
WANTLIB += 	freetype gpgme gnome-keyring ixml m pthread protobuf speex
WANTLIB += 	speexdsp ssh ssh_threads ssl stdc++ upnp xml2 xslt z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=retroshare/RetroShare/${V}/}
MODULES =		x11/qt4
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		audio/speex \
			devel/protobuf \
			net/curl \
			net/libupnp \
			security/gpgme \
			security/libssh \
			textproc/libxml,-main \
			textproc/libxslt \
			x11/gnome/libgnome-keyring
NO_TEST =		Yes
WRKDIST =		${WRKDIR}/retroshare-${V:S/c$//}
WRKSRC =		${WRKDIST}/src

post-patch:
	${SUBST_CMD} ${WRKSRC}/libretroshare/src/libretroshare.pro \
		${WRKSRC}/libretroshare/src/rsserver/rsinit.cc \
		${WRKSRC}/plugins/FeedReader/FeedReader.pro \
		${WRKSRC}/retroshare-gui/src/retroshare-gui.pro \
		${WRKSRC}/retroshare-nogui/src/retroshare-nogui.pro

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 RetroShare.pro

# no install target provided...
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/retroshare-gui/src/RetroShare ${PREFIX}/bin/RetroShare
	${INSTALL_PROGRAM} ${WRKSRC}/retroshare-nogui/src/retroshare-nogui ${PREFIX}/bin/retroshare-nogui
	${INSTALL_DATA_DIR} ${PREFIX}/lib/retroshare/extensions
	${INSTALL_DATA} ${WRKSRC}/plugins/VOIP/libVOIP.so.1.0 ${PREFIX}/lib/retroshare/extensions/libVOIP.so
	${INSTALL_DATA} ${WRKSRC}/plugins/LinksCloud/libLinksCloud.so.1.0 ${PREFIX}/lib/retroshare/extensions/libLinksCloud.so
	${INSTALL_DATA} ${WRKSRC}/plugins/FeedReader/libFeedReader.so.1.0 ${PREFIX}/lib/retroshare/extensions/libFeedReader.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/retroshare/
	${INSTALL_DATA} ${WRKSRC}/libbitdht/src/bitdht/bdboot.txt ${PREFIX}/share/retroshare
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/retroshare.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/24x24/apps
	${INSTALL_DATA} ${WRKSRC}/data/24x24/retroshare.png ${PREFIX}/share/icons/hicolor/24x24/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/data/48x48/retroshare.png ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/data/64x64/retroshare.png ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/data/retroshare.xpm ${PREFIX}/share/pixmaps
	
.include <bsd.port.mk>
