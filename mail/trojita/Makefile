# $OpenBSD: Makefile,v 1.33 2020/03/14 01:17:13 jca Exp $

COMMENT =		fast Qt IMAP e-mail client

DISTNAME =		trojita-0.7
REVISION =		11

SHARED_LIBS =		trojita_plugins	2.0 # 2.0

CATEGORIES =		mail x11

HOMEPAGE =		http://trojita.flaska.net/
MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trojita/}
EXTRACT_SUFX =		.tar.xz

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets c gpgmepp
WANTLIB += m mimetic qt5keychain z

MODULES =		devel/cmake x11/qt5

BUILD_DEPENDS =		x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/qt5/qtsvg

LIB_DEPENDS =		mail/mimetic \
			security/qtkeychain \
			security/gpgme,,-qt \
			x11/qt5/qtwebkit

CONFIGURE_ENV +=	QTDIR="${MODQT_LIBDIR}"
CONFIGURE_ARGS +=	-DGIT_EXECUTABLE="" \
			-DWITH_CLEARTEXT_PLUGIN:Bool=ON \
			-DWITH_DBUS:Bool=ON \
			-DWITH_DESKTOP:Bool=ON \
			-DWITH_QTKEYCHAIN_PLUGIN:Bool=ON \
			-DWITH_RAGEL:Bool=OFF \
			-DWITH_SHARED_PLUGINS:Bool=ON \
			-DWITH_TESTS:Bool=ON \
			-DWITH_ZLIB:Bool=ON \
			-DWITH_QT5:Bool=ON

TEST_IS_INTERACTIVE =	X11

pre-configure:
	${SUBST_CMD} ${WRKDIST}/CMakeLists.txt

post-configure:
	ln -sf ${MODQT_LIBDIR}/bin/lconvert ${WRKDIR}/bin

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/ctest --output-on-failure

.include <bsd.port.mk>
