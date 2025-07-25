COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet

DISTNAME =		sonnet-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5SonnetCore		7.0
SHARED_LIBS +=		KF5SonnetUi		6.0
WANTLIB += ${COMPILER_LIBCXX} Qt5Core
WANTLIB-main += ${WANTLIB} Qt5Gui Qt5Network Qt5Qml
WANTLIB-main += ${WANTLIB} Qt5QmlModels Qt5Quick Qt5Widgets c m
WANTLIB-aspell += ${WANTLIB} KF5SonnetCore aspell m
WANTLIB-hunspell += ${WANTLIB} KF5SonnetCore hunspell-1.7 m



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
