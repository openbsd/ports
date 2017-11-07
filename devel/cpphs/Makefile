# $OpenBSD: Makefile,v 1.43 2017/11/07 21:58:37 kili Exp $

COMMENT-main =	liberalised reimplementation of cpp in Haskell
COMMENT-lib =	cpphs library

DISTNAME =	cpphs-1.19.3
PKGNAME-main =	${DISTNAME}
PKGNAME-lib =	hs-${DISTNAME}
REVISION-lib =	3
CATEGORIES =	devel
MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -lib
WANTLIB-main =		${WANTLIB} c m pthread

SUBST_VARS +=		DISTNAME

WANTLIB-main +=		util
MODULES =		lang/ghc
LIB_DEPENDS +=		converters/libiconv
WANTLIB +=		iconv
MODGHC_BUILD =		hackage cabal haddock register
MODGHC_PACKAGE_KEY =	GtQ6xfHb1Ce8czFKqWnXBb
LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-main =
LIB_DEPENDS-lib =
RUN_DEPENDS-lib =	devel/hs-old-locale \
			devel/hs-old-time \
			textproc/hs-polyparse>=1.9
BUILD_DEPENDS +=	${RUN_DEPENDS-lib}
WANTLIB-lib =
DIST_SUBDIR =

post-install:
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
