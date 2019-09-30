# $OpenBSD: Makefile,v 1.6 2019/09/30 12:50:08 kili Exp $

COMMENT-main =		shell script analysis tool
COMMENT-lib =		ShellCheck library

V =			0.4.7
DISTNAME =		ShellCheck-${V}
REVISION-main =		1
REVISION-lib =		3
PKGNAME-main =		shellcheck-${V}
PKGNAME-lib =		hs-shellcheck-${V}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		c charset ffi gmp iconv m pthread util
WANTLIB-lib =

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1v0sx5oDTF9BoGzz61tUYo

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	devel/hs-QuickCheck>=2.7.4 \
			devel/hs-regex-tdfa \
			lang/ghc=${MODGHC_VER} \
			textproc/hs-json
LIB_DEPENDS-main =	converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/shellcheck.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
