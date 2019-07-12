# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:05 sthen Exp $

# qt5 webkit
USE_WXNEEDED =	Yes

COMMENT =	distraction-free Markdown editor

GH_ACCOUNT =	wereturtle
GH_PROJECT =	ghostwriter
GH_TAGNAME =	v1.7.4
REVISION =	0

CATEGORIES =	editors

HOMEPAGE =	https://wereturtle.github.io/ghostwriter/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3 code, CC BY-SA 4.0 resources
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5WebKit Qt5WebKitWidgets Qt5Widgets c hunspell-1.6
WANTLIB += m pthread

MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtbase \
			x11/qt5/qtsvg \
			x11/qt5/qtwebkit

NO_TEST =		Yes

pre-configure:
	@sed -i 's,/share/man/man1,/man/man1,' \
		${WRKSRC}/ghostwriter.pro

.include <bsd.port.mk>
