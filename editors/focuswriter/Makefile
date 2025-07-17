COMMENT =	simple, distraction-free writing environment

DISTNAME =	focuswriter-1.8.12
CATEGORIES =	editors

HOMEPAGE =	https://gottcode.org/focuswriter/

SITES =		${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Multimedia Qt6Network Qt6PrintSupport Qt6Widgets
WANTLIB += c hunspell-1.7 iconv m z

MODULES =	devel/cmake \
		x11/qt6

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	converters/libiconv \
		textproc/hunspell \
		x11/qt6/qtmultimedia

NO_TEST =	Yes

.include <bsd.port.mk>
