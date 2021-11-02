# $OpenBSD: Makefile,v 1.8 2021/11/02 00:01:13 sthen Exp $

COMMENT =	EPUB ebook editor

PKGNAME =	sigil-${GH_TAGNAME}
REVISION =	0

GH_ACCOUNT =	Sigil-Ebook
GH_PROJECT =	Sigil
GH_TAGNAME =	1.4.3

CATEGORIES =	editors

HOMEPAGE =	https://sigil-ebook.com/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel
WANTLIB += Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets
WANTLIB += Qt5Xml c hunspell-1.7 m pcre16 z

MODULES =		devel/cmake \
			lang/python \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			textproc/py-lxml${MODPY_FLAVOR}
LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtwebengine

CONFIGURE_ARGS =	-DUSE_SYSTEM_LIBS=ON

NO_TEST =		Yes

.include <bsd.port.mk>
