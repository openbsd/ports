COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet

DISTNAME =		sonnet-${VERSION}

SHARED_LIBS +=  KF6SonnetCore             0.0 # 0.0
SHARED_LIBS +=  KF6SonnetUi               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core

WANTLIB-main += ${WANTLIB} GL Qt6Gui Qt6Network Qt6OpenGL
WANTLIB-main += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB-main += Qt6Widgets c m

WANTLIB-aspell += ${WANTLIB} KF6SonnetCore aspell m
WANTLIB-hunspell += ${WANTLIB} KF6SonnetCore hunspell-1.7 m

MULTI_PACKAGES =	-main -aspell -hunspell

LIB_DEPENDS =		x11/qt6/qtdeclarative

LIB_DEPENDS-aspell =	${BASE_PKGPATH},-main \
			textproc/aspell/core

LIB_DEPENDS-hunspell =	${BASE_PKGPATH},-main \
			textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=ON

.include <bsd.port.mk>
