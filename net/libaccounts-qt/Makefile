COMMENT =	Qt-based client library for the accounts database

CATEGORIES =	net

V =		VERSION_1.17
DIST_TUPLE =	gitlab accounts-sso libaccounts-qt ${V} .
DISTNAME =	libaccounts-qt-${V:S/VERSION_//}

SHARED_LIBS +=  accounts-qt5              0.0 # 1.4
SHARED_LIBS +=  accounts-qt6              0.0 # 1.4

HOMEPAGE =	https://accounts-sso.gitlab.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes


FLAVORS=	qt6
FLAVOR ?=

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	libaccounts-qt6-${V:S/VERSION_//}
MODULES =	x11/qt6 \
		devel/qmake
WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Test Qt6Xml accounts-glib
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl m
QT_VERSION =	qt6
.else
MODULES =	x11/qt5 \
		devel/qmake
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Test Qt5Xml accounts-glib
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl m
QT_VERSION =	qt5
.endif

LIB_DEPENDS =	net/libaccounts-glib \
		devel/glib2

WRKDIST =	${WRKDIR}/libaccounts-qt-${V}-c8fdd05f1a1ff5886f4649d24f2ba8c5f61cfa3a

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Accounts/AccountsQt5Config.cmake.in \
		${WRKSRC}/Accounts/AccountsQt6Config.cmake.in

post-install:
	mv ${PREFIX}/bin/accountstest ${PREFIX}/bin/accountstest-${QT_VERSION}

.include <bsd.port.mk>

