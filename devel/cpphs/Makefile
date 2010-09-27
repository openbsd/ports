# $OpenBSD: Makefile,v 1.17 2010/09/27 19:40:20 kili Exp $

COMMENT-main =	liberalised reimplementation of cpp in Haskell
COMMENT-lib =	cpphs library

ONLY_FOR_ARCHS-lib =	i386 amd64

DISTNAME =	cpphs-1.11
PKGNAME-main =	${DISTNAME}
PKGNAME-lib =	hs-${DISTNAME}
REVISION-main =	3
CATEGORIES =	devel
MAINTAINER =	Matthias Kilian <kili@openbsd.org>
HOMEPAGE =	http://haskell.org/cpphs/
MASTER_SITES =	http://www.cs.york.ac.uk/fp/cpphs/

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MULTI_PACKAGES =	-main
WANTLIB-main =		${WANTLIB} c m pthread

SUBST_VARS +=		DISTNAME

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# GHC: use cabal to build both the executable and the library.
MULTI_PACKAGES +=	-lib
WANTLIB-main +=		gmp util
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal haddock register
LIB_DEPENDS-main =	${LIB_DEPENDS} ::devel/gmp
RUN_DEPENDS-main =
LIB_DEPENDS-lib =
.else
# NHC: use the good old makefile for now (though it *should* be possible
# to build with cabal, too).
BUILD_DEPENDS +=	::devel/hmake \
			::lang/nhc98
HC =			hmake 
HC_OPTS =		-nhc98 -package base

do-build:
	cd ${WRKSRC} && ${HC} ${HC_OPTS} cpphs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cpphs        ${PREFIX}/bin
.endif

post-install:
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-regress:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
