# $OpenBSD: Makefile,v 1.7 2007/06/27 13:54:56 ajacoutot Exp $
# $NetBSD: Makefile,v 1.29 2004/03/26 21:19:53 wiz Exp $

COMMENT=	"portable Haskell compiler"

# not for 64 bits
NOT_FOR_ARCHS=	${LP64_ARCHS}

V=		1.16
DISTNAME=	nhc98-${V}
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/nhc98/
MAINTAINER=	Don Stewart <dons@openbsd.org>

MASTER_SITES=	http://www.cs.york.ac.uk/fp/nhc98/
MASTER_SITES0=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/nhc98/${V}/

DIST_SUBDIR=	${DISTNAME}
DISTFILES=	nhc98src-${V}.tar.gz nhc98-${V}-regress.tar.bz2:0

# these are vendor patches
PATCHFILES=	patch-${V}-typesyn:0 patch-${V}-ghc6:0

CC=		gcc

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=--installdir=${PREFIX}

# if you use ghc to build nhc98, it will run 2.5x faster than with gcc
# so we relegate the gcc path to archs with no ghc
.if ${MACHINE_ARCH} == "i386"
MODULES=	lang/ghc
CONFIGURE_ARGS+=--buildwith=ghc
WANTLIB+=	gmp
.else
CONFIGURE_ARGS+=--buildwith=gcc
.endif

REGRESS_DEPENDS=::lang/python/2.3
REGRESS_RESULT=	${WRKSRC}/../${DISTNAME}-regress/actual.result 
REGRESS_FLAGS=	TEST_HC="${WRKSRC}/script/nhc98" WAY="normal"
REGRESS_FLAGS+=	EXTRA_RUNTEST_OPTS="--output-summary=${REGRESS_RESULT}" \
		PYTHON="${LOCALBASE}/bin/python2.3"

# BSDish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline

.include <bsd.port.mk>
