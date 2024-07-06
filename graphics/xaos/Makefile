COMMENT =		interactive fractal zoomer and morpher

V =			4.3.2
GH_ACCOUNT =		xaos-project
GH_PROJECT =		XaoS
GH_TAGNAME =		release-$V
PKGNAME =		xaos-$V

CATEGORIES =		graphics

HOMEPAGE =		https://xaos-project.github.io

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m

MODULES =		x11/qt6
BUILD_DEPENDS =		devel/gettext,-tools

NO_TEST=		Yes

QMAKE_ARGS =		USE_OPENGL=true

FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} qmake-qt6 XaoS.pro \
		${QMAKE_ARGS}

.include <bsd.port.mk>
