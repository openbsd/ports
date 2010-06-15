# $OpenBSD: Makefile,v 1.13 2010/06/15 17:59:24 kili Exp $

COMMENT =	liberalised reimplementation of cpp in Haskell

DISTNAME =	cpphs-1.11
PKGNAME =	${DISTNAME}p1
CATEGORIES =	devel
MAINTAINER =	Matthias Kilian <kili@openbsd.org>
HOMEPAGE =	http://haskell.org/cpphs/
MASTER_SITES =	http://www.cs.york.ac.uk/fp/cpphs/

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c m

# Pure Haskell 98. Could also interpret via Hugs
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
WANTLIB +=	util
MODULES =	lang/ghc converters/libiconv
MODGHC_BUILD =	nort
LIB_DEPENDS =	gmp::devel/gmp
HC =		ghc
HC_OPTS =	-O -o cpphs --make
.else
BUILD_DEPENDS+=	::devel/hmake \
		::lang/nhc98
HC=		hmake 
HC_OPTS=	-nhc98 -package base
.endif

do-build:
	cd ${WRKSRC} && ${HC} ${HC_OPTS} cpphs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cpphs        ${PREFIX}/bin
	${INSTALL_MAN}     ${WRKSRC}/docs/cpphs.1 ${PREFIX}/man/man1

do-regress:
	cd ${WRKSRC}/tests && /bin/sh ./runtests

.include <bsd.port.mk>
