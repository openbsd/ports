# $OpenBSD: Makefile,v 1.8 2007/07/21 14:05:10 kili Exp $

COMMENT=		minimalist documentation tool for Haskell

V=			0.2.6
DISTNAME=		idoc-${V}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		devel
MAINTAINER=		Matthias Kilian <kili@openbsd.org>
HOMEPAGE=		http://www.cse.unsw.edu.au/~chak/haskell/idoc/
MASTER_SITES=		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

# pure Haskell 98
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
MODULES=		lang/ghc
MODGHC_RUNTIME=		No
LIB_DEPENDS=		gmp::devel/gmp
.else
BUILD_DEPENDS+=		::lang/nhc98
MAKE_FLAGS=		HC=nhc98
.endif

ALL_TARGET=
USE_GMAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/idoc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/idoc/

do-regress:
	cd ${WRKSRC}/test && ../idoc Foo.hs && /usr/bin/lynx --dump Foo.html

.include <bsd.port.mk>
