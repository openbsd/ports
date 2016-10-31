# $OpenBSD: Makefile,v 1.20 2016/10/31 17:49:30 ajacoutot Exp $

COMMENT=		Lumina Desktop Environment

GH_ACCOUNT=		trueos
GH_PROJECT=		lumina
GH_TAGNAME=		v1.1.0

SHARED_LIBS +=  	LuminaUtils		1.1 # 1.1

CATEGORIES=		x11
MAINTAINER=		Bryan C. Everly <bryan@bceassociates.com>
HOMEPAGE=		http://lumina-desktop.org/

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5Svg Qt5Widgets Qt5X11Extras Xdamage c
WANTLIB += m pthread xcb xcb-composite xcb-damage xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-util

# BSD
PERMIT_PACKAGE_CDROM=	Yes
NO_TEST=		Yes

MODULES=		x11/qt5

RUN_DEPENDS=		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-base \
			x11/kde4/oxygen-icons \
			x11/fluxbox \
			x11/numlockx \
			x11/xscreensaver

MAKE_FLAGS=		LIBLuminaUtils_VERSION=${LIBLuminaUtils_VERSION}
FAKE_FLAGS=		INSTALL_ROOT=${DESTDIR}/

pre-configure:
	sed -i -e "s,!!LOCALBASE!!,${LOCALBASE}," \
		-e "s,!!SYSCONFDIR!!,${SYSCONFDIR}," \
		${WRKSRC}/src-qt5/OS-detect.pri

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5 CONFIG+="configure WITH_I18N"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${WRKINST}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/luminaDesktop.conf

.include <bsd.port.mk>
