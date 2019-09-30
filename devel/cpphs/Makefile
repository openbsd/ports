# $OpenBSD: Makefile,v 1.48 2019/09/30 12:51:25 kili Exp $

COMMENT-main =	liberalised reimplementation of cpp in Haskell
COMMENT-lib =	cpphs library

DISTNAME =	cpphs-1.19.3
PKGNAME-main =	${DISTNAME}
REVISION-main =	0
PKGNAME-lib =	hs-${DISTNAME}
REVISION-lib =	7
CATEGORIES =	devel
MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -lib

SUBST_VARS +=		DISTNAME

MODULES =		lang/ghc
LIB_DEPENDS +=		converters/libiconv

WANTLIB-main =		c charset ffi gmp m iconv pthread util

MODGHC_BUILD =		hackage cabal haddock register
MODGHC_PACKAGE_KEY =	3CUnFHz9uegIX6e6hlBlNd
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =
LIB_DEPENDS-lib =
RUN_DEPENDS-lib =	devel/hs-old-locale \
			devel/hs-old-time \
			lang/ghc=${MODGHC_VER} \
			textproc/hs-polyparse>=1.9
BUILD_DEPENDS +=	${RUN_DEPENDS-lib}
WANTLIB-lib =
DIST_SUBDIR =

post-install:
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
