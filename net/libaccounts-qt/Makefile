COMMENT =	Qt-based client library for the accounts database

CATEGORIES =	net

V =		VERSION_1.16
DISTNAME =	libaccounts-qt-${V:S/VERSION_//}
REVISION =	1

SHARED_LIBS +=  accounts-qt5              0.0 # 1.4

HOMEPAGE =	https://accounts-sso.gitlab.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

SITES =	https://gitlab.com/accounts-sso/libaccounts-qt/-/archive/${V}/

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Test Qt5Xml accounts-glib
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl m

MODULES =	x11/qt5 \
		devel/qmake

BUILD_DEPENDS =	devel/doxygen>=1.9.8 \
		textproc/gtk-doc

LIB_DEPENDS =	net/libaccounts-glib \
		devel/glib2

WRKDIST =	${WRKDIR}/libaccounts-qt-${V}-525ec684cfa8d234f797d7e49e21c476eea04d8e

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	ln -sf ${LOCALBASE}/lib/qt5/bin/q{collection,help}generator ${WRKDIR}/bin/
	${SUBST_CMD} ${WRKSRC}/Accounts/AccountsQt5Config.cmake.in

.include <bsd.port.mk>

