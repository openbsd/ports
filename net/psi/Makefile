# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:44 sthen Exp $

COMMENT=	multiplatform Jabber client

DISTNAME=	psi-0.15
REVISION=	11
CATEGORIES=	net

HOMEPAGE=	https://psi-im.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=psi/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE QtDBus QtGui QtNetwork QtXml SM X11 Xext Xi Xinerama
WANTLIB += Xrender Xss c enchant fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 iconv intl m pthread qca ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		x11/qt4

USE_GMAKE=		Yes

LIB_DEPENDS=		security/qca \
			textproc/enchant
RUN_DEPENDS=		devel/desktop-file-utils \
			security/qca,-gnupg \
			security/qca,-ossl \
			x11/gtk+3,-guic

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS+=	--prefix=${LOCALBASE} \
			--qtdir=${MODQT4_QTDIR} \
			--disable-growl

# For QSettings to write its setup
PORTHOME=		${WRKDIST}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/psi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/psi
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/psi
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/psi
	cp -R ${WRKSRC}/iconsets ${PREFIX}/share/psi
	cp -R ${WRKSRC}/sound ${PREFIX}/share/psi
	cp -R ${WRKSRC}/certs ${PREFIX}/share/psi

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/psi.desktop ${PREFIX}/share/applications/

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/16x16/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/logo_16.png \
		${PREFIX}/share/icons/hicolor/16x16/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/32x32/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/logo_32.png \
		${PREFIX}/share/icons/hicolor/32x32/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/logo_48.png \
		${PREFIX}/share/icons/hicolor/48x48/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/logo_64.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/logo_128.png \
		${PREFIX}/share/icons/hicolor/128x128/apps/psi.png

.include <bsd.port.mk>
