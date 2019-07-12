# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:01 sthen Exp $

BROKEN-i386 =		needs a fixed rts/Linker.c in ghc

COMMENT-main =		shell script analysis tool
COMMENT-lib =		ShellCheck library

V =			0.4.7
DISTNAME =		ShellCheck-${V}
REVISION-main =		0
REVISION-lib =		1
PKGNAME-main =		shellcheck-${V}
PKGNAME-lib =		hs-shellcheck-${V}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		c iconv m pthread util
WANTLIB-lib =

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FGszl8wDu4DoQ1UCsbZPa

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	devel/hs-mtl>=2.2.1 \
			devel/hs-parsec \
			devel/hs-QuickCheck>=2.7.4 \
			devel/hs-regex-tdfa \
			lang/ghc=${MODGHC_VER} \
			textproc/hs-json
LIB_DEPENDS-main =	converters/libiconv
RUN_DEPENDS-main =

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/shellcheck.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
