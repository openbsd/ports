# $OpenBSD: Makefile,v 1.25 2017/12/02 12:44:33 edd Exp $

COMMENT =		fast Qt IMAP e-mail client

DISTNAME =		trojita-0.7
REVISION =		4

SHARED_LIBS =		trojita_plugins	2.0 # 2.0

CATEGORIES =		mail x11

HOMEPAGE =		http://trojita.flaska.net/
MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trojita/}
EXTRACT_SUFX =		.tar.xz

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread z KF5Gpgmepp-pthread KF5QGpgme
WANTLIB +=		Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5WebKit
WANTLIB +=		Qt5WebKitWidgets Qt5Widgets qt5keychain gpg-error
WANTLIB +=		gpgme mimetic assuan
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake x11/qt5

BUILD_DEPENDS =		x11/qt5/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/qt5/qtsvg

LIB_DEPENDS =		mail/mimetic \
			security/qtkeychain,qt5 \
			x11/kde-applications/gpgmepp \
			x11/qt5/qtwebkit

CONFIGURE_ENV +=	QTDIR="${MODQT_LIBDIR}"
CONFIGURE_ARGS +=	-DWITH_RAGEL=OFF \
			-DGIT_EXECUTABLE=""

TEST_IS_INTERACTIVE =	X11

post-configure:
	ln -sf ${MODQT_LIBDIR}/bin/lconvert ${WRKDIR}/bin

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/ctest --output-on-failure

.include <bsd.port.mk>
