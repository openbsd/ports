# $OpenBSD: Makefile,v 1.11 2019/03/30 09:13:56 rsadowski Exp $

COMMENT-main =		multi-language spell checker for KDE
COMMENT-aspell =	ASpell plugin for Sonnet
COMMENT-hunspell =	HunSpell plugin for Sonnet
DISTNAME =		sonnet-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-aspell =	sonnet-aspell-${VERSION}
PKGNAME-hunspell =	sonnet-hunspell-${VERSION}

SHARED_LIBS =		KF5SonnetCore		3.3
SHARED_LIBS +=		KF5SonnetUi		3.3

MULTI_PACKAGES =	-main -aspell -hunspell

WANTLIB-main =		${WANTLIB} ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m c
WANTLIB-aspell =	${WANTLIB} ${COMPILER_LIBCXX} Qt5Core aspell m
WANTLIB-hunspell =	${WANTLIB} ${COMPILER_LIBCXX} Qt5Core hunspell-1.6 m

RUN_DPENEDS-aspell =	${BASE_PKGPATH},-main
LIB_DEPENDS-aspell =	${LIB_DEPENDS} \
			textproc/aspell/core

RUN_DPENEDS-hunspell =	${BASE_PKGPATH},-main
LIB_DEPENDS-hunspell =	${LIB_DEPENDS} \
		textproc/hunspell

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_HSPELL=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_VOIKKO=Yes

#The following tests FAILED:
# 5 - sonnet-test_highlighter (Failed)

.include <bsd.port.mk>
