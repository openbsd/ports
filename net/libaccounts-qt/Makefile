COMMENT =	Qt-based client library for the accounts database

CATEGORIES =	net

V =		VERSION_1.17
DIST_TUPLE =	gitlab accounts-sso libaccounts-qt ${V} .
DISTNAME =	libaccounts-qt-${V:S/VERSION_//}
FULLPKGNAME=	libaccounts-qt-${V:S/VERSION_//}
REVISION=	0

SHARED_LIBS +=  accounts-qt6              0.0 # 1.4

HOMEPAGE =	https://accounts-sso.gitlab.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Test Qt6Xml accounts-glib
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl m

MODULES =	x11/qt6 \
		devel/qmake

QT_VERSION =	qt6

LIB_DEPENDS =	net/libaccounts-glib \
		devel/glib2

WRKDIST =	${WRKDIR}/libaccounts-qt-${V}-c8fdd05f1a1ff5886f4649d24f2ba8c5f61cfa3a

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Accounts/AccountsQt6Config.cmake.in

post-install:
	mv ${PREFIX}/bin/accountstest ${PREFIX}/bin/accountstest-qt6

.include <bsd.port.mk>

