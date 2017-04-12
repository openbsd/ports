# $OpenBSD: Makefile,v 1.3 2017/04/12 18:12:33 landry Exp $

COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet
DISTNAME =		sonnet-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-aspell =	sonnet-aspell-${VERSION}
PKGNAME-hunspell =	sonnet-hunspell-${VERSION}
REVISION-hunspell =	0

SHARED_LIBS =		KF5SonnetCore		0.0
SHARED_LIBS +=		KF5SonnetUi		0.0

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

# please CMake
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0026=OLD \
			-DCMAKE_POLICY_DEFAULT_CMP0048=OLD

.include <bsd.port.mk>
