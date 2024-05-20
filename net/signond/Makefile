COMMENT =	SignOn Daemon (Qt)

CATEGORIES =	net

HOMEPAGE =	https://accounts-sso.gitlab.io/

V =		VERSION_8.61
DIST_TUPLE =	gitlab nicolasfella signond \
		c8ad98249af541514ff7a81634d3295e712f1a39 .
DISTNAME =	signond-${V:S/VERSION_//}pl0
REVISION =	0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  signon-extension          0.0 # 1.0
SHARED_LIBS +=  signon-plugins-common     0.0 # 1.0
SHARED_LIBS +=  signon-plugins            0.0 # 1.0
SHARED_LIBS +=  signon-qt5                0.0 # 1.0

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5Xml c m

MODULES =	x11/qt5 \
		devel/qmake

BUILD_DEPENDS =	devel/doxygen>=1.10.0

WRKDIST =	${WRKDIR}/signond-c8ad98249af541514ff7a81634d3295e712f1a39

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	ln -sf ${LOCALBASE}/lib/qt5/bin/q{collection,help}generator ${WRKDIR}/bin/
	${SUBST_CMD} ${WRKSRC}/lib/SignOn/SignOnQt5Config.cmake.in

.include <bsd.port.mk>
