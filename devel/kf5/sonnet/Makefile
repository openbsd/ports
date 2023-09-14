COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet

DISTNAME =		sonnet-${VERSION}

SHARED_LIBS =		KF5SonnetCore		7.0
SHARED_LIBS +=		KF5SonnetUi		6.0

WANTLIB-main += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB-main += Qt5QmlModels Qt5Quick Qt5Widgets c m

WANTLIB-aspell += ${COMPILER_LIBCXX} Qt5Core KF5SonnetCore m
WANTLIB-hunspell += ${COMPILER_LIBCXX} Qt5Core KF5SonnetCore hunspell-1.7 m


MULTI_PACKAGES =	-main -aspell -hunspell

LIB_DEPENDS =		x11/qt5/qtdeclarative

LIB_DEPENDS-aspell =	${BASE_PKGPATH},-main \
			textproc/aspell/core

LIB_DEPENDS-hunspell =	${BASE_PKGPATH},-main \
			textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=ON

.include <bsd.port.mk>
