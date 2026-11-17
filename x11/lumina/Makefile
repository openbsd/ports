COMMENT=		Lumina Desktop Environment

GH_ACCOUNT=		trueos
GH_PROJECT=		lumina
GH_TAGNAME=		v1.6.2
PKGNAME=		lumina-${GH_TAGNAME:S/v//}

CATEGORIES=		x11

HOMEPAGE=		https://lumina-desktop.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5Svg
WANTLIB += Qt5Widgets Qt5X11Extras X11 Xcursor Xdamage c m xcb
WANTLIB += xcb-composite xcb-damage xcb-dpms xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-util

MODULES=		x11/qt5

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/git \
			x11/oxygen-icons \
			multimedia/gstreamer1/plugins-base \
			x11/fluxbox \
			x11/numlockx \
			x11/xscreensaver \
			x11/gtk+4,-guic

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
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/qmake-qt5 \
		CONFIG+="configure WITH_I18N NO_XINPUT"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumina
	mv ${WRKINST}/etc/luminaDesktop.conf.dist \
		${PREFIX}/share/examples/lumina/luminaDesktop.conf
	gunzip ${PREFIX}/man/man{1,8}/*.gz

.include <bsd.port.mk>
