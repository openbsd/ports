USE_WXNEEDED =	Yes

COMMENT =	EPUB ebook editor

PKGNAME =	sigil-${GH_TAGNAME}

GH_ACCOUNT =	Sigil-Ebook
GH_PROJECT =	Sigil
GH_TAGNAME =	2.6.2

CATEGORIES =	editors

HOMEPAGE =	https://sigil-ebook.com/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Svg Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml c hunspell-1.7 intl m pcre2-16 ${MODPY_WANTLIB}
WANTLIB += util z

MODULES =		devel/cmake \
			lang/python \
			x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils \
			textproc/py-lxml

LIB_DEPENDS =		textproc/hunspell \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qtsvg \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

CONFIGURE_ARGS =	-DUSE_SYSTEM_LIBS=ON

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =		Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/share/sigil/python3lib/updatechecker.py${PATCHORIG}
	${MODPY_COMPILEALL} ${PREFIX}/share/sigil/python3lib/ \
		${PREFIX}/share/sigil/plugin_launchers/python

.include <bsd.port.mk>
