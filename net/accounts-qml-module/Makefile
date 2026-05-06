COMMENT =	QML bindings for libaccounts-qt and libsignon-qt

CATEGORIES =	net

COMMIT = 	05e79ebbbf3784a87f72b7be571070125c10dfe3
DIST_TUPLE =	gitlab accounts-sso accounts-qml-module ${COMMIT} .
DISTNAME =	accounts-qml-module-0.7

HOMEPAGE =	https://accounts-sso.gitlab.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6Test Qt6Xml accounts-qt6 c m signon-qt6

MODULES =	x11/qt6 \
		devel/qmake

LIB_DEPENDS =	net/libaccounts-qt \
		net/signond-qt6 \
		x11/qt6/qtdeclarative

WRKDIST =	${WRKDIR}/accounts-qml-module-${COMMIT}

.include <bsd.port.mk>

