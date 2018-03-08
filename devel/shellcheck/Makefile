# $OpenBSD: Makefile,v 1.1.1.1 2018/03/08 20:47:50 kili Exp $

BROKEN-i386 =		needs a fixed rts/Linker.c in ghc

COMMENT-main =		shell script analysis tool
COMMENT-lib =		ShellCheck library

V =			0.4.7
DISTNAME =		ShellCheck-${V}
PKGNAME-main =		shellcheck-${V}
PKGNAME-lib =		hs-shellcheck-${V}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		c iconv m pthread util
WANTLIB-lib =

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2v3KY7caHZkFqKIPumZT3l

BUILD_DEPENDS +=	devel/hs-mtl>=2.2.1 \
			devel/hs-parsec \
			devel/hs-QuickCheck>=2.7.4 \
			devel/hs-regex-tdfa \
			lang/ghc=${MODGHC_VER} \
			textproc/hs-json
LIB_DEPENDS-main =	converters/libiconv
RUN_DEPENDS-main =
LIB_DEPENDS-lib =
RUN_DEPENDS-lib =	${BUILD_DEPENDS}

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/shellcheck.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
