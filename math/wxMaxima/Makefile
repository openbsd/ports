COMMENT =		wxWidgets GUI for the computer algebra system maxima

V =			24.02.1
GH_ACCOUNT =		wxMaxima-developers
GH_PROJECT =		wxmaxima
GH_TAGNAME =		Version-$V
PKGNAME =		wxMaxima-$V

CATEGORIES =		math

HOMEPAGE =		https://wxmaxima-developers.github.io/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_baseu_xml-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_richtext-3.2
WANTLIB += wx_gtk3u_webview-3.2

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		devel/desktop-file-utils \
			math/gnuplot \
			math/maxima

LIB_DEPENDS =		x11/wxWidgets \
			x11/wxWidgets,-webview

NO_TEST =		Yes

.include <bsd.port.mk>
