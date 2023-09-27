COMMENT =	SignOn Daemon (Qt)

CATEGORIES =	net

HOMEPAGE =	https://accounts-sso.gitlab.io/

V =		VERSION_8.61
DISTNAME =	signond-${V:S/VERSION_//}
REVISION =	4

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =		https://gitlab.com/accounts-sso/signond/-/archive/${V}/

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

BUILD_DEPENDS =	devel/doxygen>=1.9.8

WRKDIST =	${WRKDIR}/signond-${V}-5b34c5bbc45eedf55bf553675595b3fcb5c156a8

TEST_TARGET =		check
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	ln -sf ${LOCALBASE}/lib/qt5/bin/q{collection,help}generator ${WRKDIR}/bin/
	${SUBST_CMD} ${WRKSRC}/lib/SignOn/SignOnQt5Config.cmake.in

.include <bsd.port.mk>
