# $OpenBSD: Makefile,v 1.9 2003/08/14 21:38:36 avsm Exp $
# Based on Simon Marlow's port script for FreeBSD:
# $FreeBSD: ports/lang/ghc/Makefile,v 1.13 2002/08/22 12:53:38 obraun Exp $
#
# The build process:
#       1) build a bootstrap ghc4 from C source
#       2) use this to do an in-tree ghc6 bootstrap and build

ONLY_FOR_ARCHS= i386
# sparc : needs to handle the asm format in ghc/driver/mangler/*.lprl
#
# alpha and powerpc have the problem that we don't have .hc src
# to bootstrap from. We would need an "unregisterised" build...
# More work. m68k needs to have its asm format set in the
# mangler, before we can do any kind of build at all. 

COMMENT=	"compiler for the functional language Haskell"
COMMENT-doc=	"documentation for the functional language Haskell"

FULLVER=	6.0.1
BOOTVER=	4.08.2

DISTNAME=	ghc-${FULLVER}
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

LIB_DEPENDS=	gmp::devel/gmp

MULTI_PACKAGES=	-doc
SUBPACKAGE?=
FULLPKGNAME-doc=ghc-doc-${FULLVER}

HASKELL=	http://www.haskell.org/
MASTER_SITES=	${HASKELL}ghc/dist/${FULLVER}/
MASTER_SITES0=	${HASKELL}ghc/dist/${BOOTVER}/
MASTER_SITES1=	${HASKELL}ghc/docs/${FULLVER}/
MASTER_SITES2=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/ghc/${FULLVER}/

DIST_SUBDIR=	ghc-${FULLVER}
DOC_FILES=	users_guide hslibs building libraries
DOC_DIR=	${PREFIX}/share/doc/ghc

DISTFILES=	ghc-${FULLVER}-src.tar.bz2  ghc-${BOOTVER}-src.tar.bz2:0 \
		${DOC_FILES:C/(.+)/\1.html.tar.gz:1/g} \
		ghc-regress-${FULLVER}.tar.bz2:2

.if ${MACHINE_ARCH} == "i386"
A=x86
.elif ${MACHINE_ARCH} == "sparc"
A=sparc
.else
A=unreg
.endif
DISTFILES+=	ghc-${BOOTVER}-${A}-hc.tar.bz2:0
SUPDISTFILES=	ghc-${BOOTVER}-x86-hc.tar.bz2:0 ghc-${BOOTVER}-sparc-hc.tar.bz2:0

REGRESS_DEPENDS=::lang/python/2.2
REGRESS_RESULT=	${WRKSRC}/actual.result
REGRESS_FLAGS=	TEST_HC="${WRKSRC}/ghc/compiler/stage2/ghc-inplace"
REGRESS_FLAGS+=	EXTRA_RUNTEST_OPTS="--output-summary=${REGRESS_RESULT}"

# where the first compilers will be built
STAGE0=		${WRKDIR}/ghc-${BOOTVER}

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--with-ghc=${STAGE0}/ghc/driver/ghc-inplace

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LOCALBASE="${LOCALBASE}"

# Build the GHC-4 bootstrap compiler from C source
pre-configure:
	@(cd ${STAGE0} ;\
	  ${CONFIGURE_ENV} distrib/hc-build --prefix=${STAGE0})

# note: ghci not in PLIST since it doesnt work yet

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES:C/(.+)/\1.html.tar.gz/g}
	@tar zxf ${FULLDISTDIR}/${i} -C ${DOC_DIR}
.endfor

# BSD w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>
