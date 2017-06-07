# $OpenBSD: Makefile,v 1.4 2017/06/07 17:03:39 rsadowski Exp $

COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet
DISTNAME =		sonnet-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-aspell =	sonnet-aspell-${VERSION}
PKGNAME-hunspell =	sonnet-hunspell-${VERSION}

SHARED_LIBS =		KF5SonnetCore		1.0
SHARED_LIBS +=		KF5SonnetUi		1.0

MULTI_PACKAGES =	-main -aspell -hunspell

WANTLIB-main =		${WANTLIB} Qt5Core Qt5Gui Qt5Widgets m c
WANTLIB-aspell =	${WANTLIB} KF5SonnetCore Qt5Core aspell m
WANTLIB-hunspell =	${WANTLIB} KF5SonnetCore Qt5Core hunspell-1.6 m

LIB_DEPENDS-aspell =	${LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			textproc/aspell/core

LIB_DEPENDS-hunspell =	${LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=Yes

.include <bsd.port.mk>
