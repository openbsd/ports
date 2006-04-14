# $OpenBSD: Makefile,v 1.5 2006/04/14 22:52:02 naddy Exp $

COMMENT=	"multiplatform Jabber client"

DISTNAME=	psi-0.9.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://psi.affinix.com/

MAINTAINER=	Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xss m c z Xext pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=psi/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/qt3
MODQT_OVERRIDE_UIC=	No
MODQT_MT=		Yes

LIB_DEPENDS=		qca.1::security/qca

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--qtdir=${MODQT_QTDIR} \
			--with-qca-inc=${LOCALBASE}/include \
			--with-qca-lib=${LOCALBASE}/lib \
			--disable-dnotify \
			--disable-ghbnr

CONFIGURE_ENV+=		LOCALBASE=${LOCALBASE} \
			KDEDIR=${LOCALBASE}

pre-configure:
	@perl -pi -e "s@%%X11BASE%%@${X11BASE}@" ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/psi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/psi
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/psi
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/psi
	cp -R ${WRKSRC}/iconsets ${PREFIX}/share/psi
	cp -R ${WRKSRC}/sound ${PREFIX}/share/psi
	cp -R ${WRKSRC}/certs ${PREFIX}/share/psi
	cp -R ${WRKSRC}/certs ${PREFIX}/share/psi
	${INSTALL_DATA} ${WRKSRC}/libpsi/psiwidgets/libpsiwidgets.so \
		${PREFIX}/share/psi

	# Icons for KDE
	${INSTALL_DATA_DIR} ${PREFIX}/share/applnk/Internet
	${INSTALL_DATA} ${WRKSRC}/psi.desktop \
		${PREFIX}/share/applnk/Internet/

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/16x16/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/icon_16.png \
		${PREFIX}/share/icons/hicolor/16x16/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/32x32/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/icon_32.png \
		${PREFIX}/share/icons/hicolor/32x32/apps/psi.png

	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/iconsets/system/default/icon_48.png \
		${PREFIX}/share/icons/hicolor/48x48/apps/psi.png

.include <bsd.port.mk>
