COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet

DISTNAME =		sonnet-${VERSION}

SHARED_LIBS =		KF5SonnetCore		6.0
SHARED_LIBS +=		KF5SonnetUi		5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets c m

WANTLIB-aspell += ${COMPILER_LIBCXX} KF5SonnetCore Qt5Core aspell m
WANTLIB-hunspell += ${COMPILER_LIBCXX} KF5SonnetCore Qt5Core hunspell-1.7
WANTLIB-hunspell += m

MULTI_PACKAGES =	-main -aspell -hunspell

LIB_DEPENDS =		x11/qt5/qtdeclarative

LIB_DEPENDS-aspell =	${BASE_PKGPATH},-main \
			textproc/aspell/core

LIB_DEPENDS-hunspell =	${BASE_PKGPATH},-main \
			textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=ON

#The following tests FAILED:
# 5 - sonnet-test_highlighter (Failed)

.include <bsd.port.mk>
