# $OpenBSD: Makefile,v 1.1.1.1 2017/01/17 12:58:26 awolk Exp $

# qt5 webkit
USE_WXNEEDED =	Yes

COMMENT =	distraction-free Markdown editor

GH_ACCOUNT =	wereturtle
GH_PROJECT =	ghostwriter
GH_TAGNAME =	v1.4.2

CATEGORIES =	editors

HOMEPAGE =	https://wereturtle.github.io/ghostwriter/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets c hunspell-1.3
WANTLIB += m pthread

MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtbase \
			x11/qt5/qtwebkit

NO_TEST =		Yes

pre-configure:
	@sed -i 's,VERSION = ..system.*,VERSION =,' \
		${WRKSRC}/ghostwriter.pro
	@sed -i 's,/share/man/man1,/man/man1,' \
		${WRKSRC}/ghostwriter.pro

.include <bsd.port.mk>
