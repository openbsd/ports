# $OpenBSD: Makefile,v 1.37 2020/04/18 21:05:57 ratchov Exp $

COMMENT=		Lumina Desktop Environment

GH_ACCOUNT=		trueos
GH_PROJECT=		lumina
GH_TAGNAME=		v1.4.0-p1
PKGNAME=		lumina-1.4.0pl1
REVISION=		6

CATEGORIES=		x11

HOMEPAGE=		https://lumina-desktop.org/

MAINTAINER=		Bryan C. Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5MultimediaWidgets Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets Qt5X11Extras Xdamage c glib-2.0 intl m
WANTLIB += poppler-qt5 pulse pulse-mainloop-glib xcb xcb-composite
WANTLIB += xcb-damage xcb-ewmh xcb-icccm xcb-image xcb-util

MODULES=		x11/qt5

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/git \
			devel/kf5/oxygen-icons \
			multimedia/gstreamer1/plugins-base \
			x11/fluxbox \
			x11/numlockx \
			x11/xscreensaver \
			x11/gtk+3,-guic

LIB_DEPENDS=		print/poppler,-qt5 \
			x11/qt5/qtmultimedia \
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
	gunzip ${PREFIX}/man/man{1,8}/*.gz

.include <bsd.port.mk>
