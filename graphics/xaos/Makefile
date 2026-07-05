COMMENT =		interactive fractal zoomer and morpher

V =			4.3.6
GH_ACCOUNT =		xaos-project
GH_PROJECT =		XaoS
GH_TAGNAME =		release-$V
PKGNAME =		xaos-$V

CATEGORIES =		graphics

HOMEPAGE =		https://xaos-project.github.io

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6PrintSupport
WANTLIB += Qt6Widgets c m

MODULES =		devel/cmake \
			x11/qt6
BUILD_DEPENDS =		devel/gettext,-tools

NO_TEST=		Yes

CXXFLAGS +=		-DDATAPATH="\\\"${TRUEPREFIX}/share/XaoS\\\""

.include <bsd.port.mk>
