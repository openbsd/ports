# $OpenBSD: Makefile,v 1.19 2021/11/17 09:02:52 ajacoutot Exp $

COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet

PKGNAME-main =		${DISTNAME}
PKGNAME-aspell =	sonnet-aspell-${VERSION}
PKGNAME-hunspell =	sonnet-hunspell-${VERSION}

DISTNAME =		sonnet-${VERSION}

SHARED_LIBS =		KF5SonnetCore		5.1
SHARED_LIBS +=		KF5SonnetUi		5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c m

WANTLIB-aspell += ${COMPILER_LIBCXX} KF5SonnetCore Qt5Core aspell m

WANTLIB-hunspell += ${COMPILER_LIBCXX} KF5SonnetCore Qt5Core hunspell-1.7
WANTLIB-hunspell += m

MULTI_PACKAGES =	-main -aspell -hunspell

BUILD_DEPENDS =		x11/qt5/qtdeclarative

RUN_DEPENDS-main =	x11/qt5/qtdeclarative

LIB_DEPENDS-aspell =	${LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			textproc/aspell/core

LIB_DEPENDS-hunspell =	${LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=ON

#The following tests FAILED:
# 5 - sonnet-test_highlighter (Failed)

.include <bsd.port.mk>
