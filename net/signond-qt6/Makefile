COMMENT =	SignOn Daemon (Qt)

CATEGORIES =	net

HOMEPAGE =	https://accounts-sso.gitlab.io/

V =		VERSION_8.61
DIST_TUPLE =	gitlab nicolasfella signond \
		c8ad98249af541514ff7a81634d3295e712f1a39 .
DISTNAME =	signond-qt6-${V:S/VERSION_//}

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  signon-qt6                0.0 # 1.0

# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus m

MODULES =	x11/qt6 \
		devel/qmake

WRKDIST =	${WRKDIR}/signond-c8ad98249af541514ff7a81634d3295e712f1a39

pre-configure:
	ln -sf ${LOCALBASE}/lib/qt6/bin/q{collection,help}generator ${WRKDIR}/bin/
	${SUBST_CMD} ${WRKSRC}/lib/SignOn/SignOnQt6Config.cmake.in

.include <bsd.port.mk>
