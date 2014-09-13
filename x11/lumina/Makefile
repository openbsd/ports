# $OpenBSD: Makefile,v 1.1.1.1 2014/09/13 10:10:24 ajacoutot Exp $

COMMENT=	Lumina Desktop Environment

GITV=		1409847349
DISTNAME=	lumina-${GITV}
PKGNAME=	lumina-0.6.2.${GITV}
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/lumina

SHARED_LIBS +=  LuminaUtils               0.0 # 1.0

CATEGORIES=	x11

HOMEPAGE=	https://github.com/pcbsd/lumina

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += ICE QtDBus QtGui QtNetwork QtSolutions_SingleApplication-head
WANTLIB += QtXml SM X11 Xcomposite Xdamage Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m phonon pthread stdc++

MASTER_SITES=	http://www.pcbsd.org/~kris/software/ \
		ftp://ftp.pcbsd.org/pub/software/

MODULES=	x11/qt4

BUILD_DEPENDS=	multimedia/phonon

LIB_DEPENDS=	devel/qt4-qtsolutions-singleinstance

RUN_DEPENDS=	devel/desktop-file-utils \
		phonon-gstreamer-*|phonon-vlc-*:multimedia/phonon-backend/gstreamer \
		x11/kde4/oxygen-icons \
		x11/fluxbox \
		x11/numlockx \
		x11/xscreensaver

# sndio(7)
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-good

NO_TEST=	Yes

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS} \
			-I${X11BASE}/include \
			-I${LOCALBASE}/include/kde4/KDE" \
		LIBLuminaUtils_VERSION=${LIBLuminaUtils_VERSION}

FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

pre-configure:
	cp ${FILESDIR}/LuminaOS-OpenBSD.cpp \
		${WRKSRC}/libLumina/LuminaOS-OpenBSD.cpp
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/libLumina/LuminaXDG.cpp \
		${WRKSRC}/lumina-config/mainUI.cpp \
		${WRKSRC}/lumina-desktop/SettingsMenu.cpp
.for i in lumina-config lumina-desktop lumina-fm lumina-open lumina-screenshot
	perl -pi -e 's,lrelease-qt4,lrelease4,g' ${WRKSRC}/$i/$i.pro
.endfor

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4

.include <bsd.port.mk>
