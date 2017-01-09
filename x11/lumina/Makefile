# $OpenBSD: Makefile,v 1.22 2017/01/09 10:10:20 sthen Exp $

COMMENT=		Lumina Desktop Environment

GH_ACCOUNT=		trueos
GH_PROJECT=		lumina
GH_TAGNAME=		v1.2.0-p1
PKGNAME=		lumina-1.2.0pl1

CATEGORIES=		x11

HOMEPAGE=		http://lumina-desktop.org/

MAINTAINER=		Bryan C. Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras Xdamage c
WANTLIB += m pthread xcb xcb-composite xcb-damage xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-util

MODULES=		x11/qt5

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/kf5/oxygen-icons \
			multimedia/gstreamer1/plugins-base \
			x11/fluxbox \
			x11/numlockx \
			x11/xscreensaver

LIB_DEPENDS=		x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qtx11extras

MAKE_FLAGS=		LIBLuminaUtils_VERSION=${LIBLuminaUtils_VERSION}
FAKE_FLAGS=		INSTALL_ROOT=${DESTDIR}/

NO_TEST=		Yes

pre-configure:
	sed -i -e "s,!!LOCALBASE!!,${LOCALBASE}," \
		-e "s,!!SYSCONFDIR!!,${SYSCONFDIR}," \
		${WRKSRC}/src-qt5/OS-detect.pri

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5 \
		CONFIG+="configure WITH_I18N NO_XINPUT"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${WRKINST}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/luminaDesktop.conf

.include <bsd.port.mk>
