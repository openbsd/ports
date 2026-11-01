COMMENT =	Qt-based client library for the accounts database

CATEGORIES =	net

V =		1.17
DIST_TUPLE =	gitlab accounts-sso libaccounts-qt VERSION_${V} .
PKGNAME=	libaccounts-qt-${V}
REVISION=	1

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

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Accounts/AccountsQt6Config.cmake.in

post-install:
	mv ${PREFIX}/bin/accountstest ${PREFIX}/bin/accountstest-qt6

.include <bsd.port.mk>

