# Based on Simon Marlow's port script for FreeBSD:
# $FreeBSD: ports/lang/ghc/Makefile,v 1.13 2002/08/22 12:53:38 obraun Exp $
#
# Last update : ported to ELF : Wed Apr 23 12:38:42 EST 2003
#
# The build process:
#       1) build a bootstrap ghc4 from C source
#       3) use this to make a bootstrap ghc5
#       4) and then, finally, a full ghc5 

ONLY_FOR_ARCHS= i386
# sparc: hacking needed
# Requires someone to handle the asm format in ghc/driver/mangler/*.lprl
#
# m68k, alpha and powerpc have the problem that we don't
# have .hc src to bootstrap from. We would need an "unregisterised"
# build... more work

COMMENT=	"compiler for the functional language Haskell"
COMMENT-doc=	"documentation for the functional language Haskell"

FULLVER=	5.04.3
BOOTVER=	4.08.2

DISTNAME=	ghc-${FULLVER}
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

MULTI_PACKAGES=	-doc
SUBPACKAGE?=
FULLPKGNAME-doc= ghc-doc-${FULLVER}

# BSD w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=Yes

HASKELL=	http://www.haskell.org/
MASTER_SITES=	${HASKELL}ghc/dist/${FULLVER}/
MASTER_SITES0=	${HASKELL}ghc/dist/${BOOTVER}/
MASTER_SITES1=	${HASKELL}ghc/docs/${FULLVER}/

DIST_SUBDIR=	ghc-${FULLVER}
DOC_FILES=	users_guide hslibs building libraries
DOC_DIR=	${PREFIX}/share/doc/ghc

DISTFILES=	ghc-${FULLVER}-src.tar.bz2  ghc-${BOOTVER}-src.tar.bz2:0 \
		${DOC_FILES:C/(.+)/\1.html.tar.gz:1/g}

.if ${MACHINE_ARCH} == "i386"
    HCSRC=ghc-${BOOTVER}-x86-hc.tar.bz2:0
.elif ${MACHINE_ARCH} == "sparc"
    HCSRC=ghc-${BOOTVER}-sparc-hc.tar.bz2:0
.endif

DISTFILES+=	${HCSRC}

# where the first compilers will be built
STAGE0=		${WRKDIR}/ghc-${BOOTVER}
STAGE1=		${WRKDIR}/ghc-${FULLVER}-boot

YACC?=		/usr/bin/yacc
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--with-ghc=${STAGE1}/ghc/compiler/ghc-inplace

pre-configure:
# Build the GHC4 bootstrap compiler from C source
	@echo "===>  Building GHC4 bootstrap compiler"
	@(cd ${STAGE0} ; distrib/hc-build --prefix=${STAGE0})
# Now, we bootstrap GHC5 (as fast a build as possible)
	@echo "===>  Building GHC5 bootstrap compiler"
	@(mkdir ${STAGE1} ; cd ${STAGE1} ; lndir ${WRKSRC} ;\
	  ./configure --prefix=${STAGE1} \
                  --with-ghc=${STAGE0}/ghc/driver/ghc-inplace ;\
	  echo "GhcWithInterpreter=NO"        >mk/build.mk ;\
	  echo "GhcLibWays="                 >>mk/build.mk ;\
	  echo "GhcCompilerWays="            >>mk/build.mk ;\
	  echo "SplitObjs=NO"                >>mk/build.mk ;\
	  echo "FptoolsHcOpts=-H32m"         >>mk/build.mk ;\
	  ${GMAKE})
# And now, the whole thing
	@echo "===>  Building GHC5 full version"
	@(cd ${WRKSRC}; \
	  echo "GhcWithInterpreter=NO" >mk/build.mk ;\
	  echo "FptoolsHcOpts=-H32m"  >>mk/build.mk)

# note: ghci not in PLIST since it doesnt work yet

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES:C/(.+)/\1.html.tar.gz/g}
	@tar zxf ${FULLDISTDIR}/${i} -C ${DOC_DIR}
.endfor

.include <bsd.port.mk>
