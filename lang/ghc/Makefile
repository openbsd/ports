# $OpenBSD: Makefile,v 1.12 2003/09/01 22:46:28 avsm Exp $
# Based on Simon Marlow's port script for FreeBSD:
# $FreeBSD: ports/lang/ghc/Makefile,v 1.13 2002/08/22 12:53:38 obraun Exp $
# And on NetBSD's 5.04.3 .hc boot script
#
# The build process:
#       1) build a full ghc6 from pre-generated 6.0.1 C files

ONLY_FOR_ARCHS= i386
# The general solution for other architectures [alpha, powerpc,
# sparc64, hppa, mips, m68k at least] will be to boot via
# unregisterised .hc files generated on openbsd-*-i386. See:
#
#  http://haskell.org/ghc/docs/latest/html/building/sec-porting-ghc.html
#  http://cvs.haskell.org/cgi-bin/cvsweb.cgi/fptools/distrib/cross-port
#
# The best bets are powerpc, sparc, sparc64 and alpha, which are
# working, or have recently worked, on linux. m68k needs to have
# its asm format set in the mangler, before we can do any kind of
# build. sparc is in a slightly better position, as we have
# 4.08.2 .hc source, but the C-built ghc4 goes into an infinite
# loop, when I last tried -- dons

COMMENT=	"compiler for the functional language Haskell"
COMMENT-doc=	"documentation for the functional language Haskell"

V=		6.0.1

DISTNAME=	ghc-${V}
CATEGORIES=	lang
HOMEPAGE=	http://www.haskell.org/ghc/
MAINTAINER=	Don Stewart <dons@cse.unsw.edu.au>

LIB_DEPENDS=	gmp::devel/gmp

MULTI_PACKAGES=	-doc
SUBPACKAGE?=
FULLPKGNAME-doc=ghc-doc-${V}

HASKELL=	http://www.haskell.org
MASTER_SITES=	${HASKELL}/ghc/dist/${V}/
MASTER_SITES0=	${HASKELL}/ghc/docs/${V}/
MASTER_SITES1=	${HASKELL}/definition/
MASTER_SITES2=	ftp://ftp.cse.unsw.edu.au/pub/users/dons/ghc/${V}/

DIST_SUBDIR=	ghc-${V}
DOC_FILES=	users_guide hslibs building libraries
DOC_FILES1=	haskell98-report
DOC_DIR=	${PREFIX}/share/doc/ghc

DISTFILES=	ghc-${V}-src.tar.bz2 \
		${DOC_FILES:C/(.+)/\1.html.tar.gz:0/g} \
		${DOC_FILES1:C/(.+)/\1-html.tar.gz:1/g} \
		ghc-regress-${V}.tar.bz2:2 \
		ghc-${V}-${ARCH}-hc.tar.gz:2

# only i386 hc src exists at the moment
SUPDISTFILES=	ghc-${V}-${ARCH}-hc.tar.gz:2

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV+=	LOCALBASE="${LOCALBASE}"

# distrib/hc-build is a wrapper around configure and the
# bootstrap make, with magic flags, vars and control flow
do-configure:
	: nothing here

do-build:
	@(cd ${WRKSRC} ;\
	 ${CONFIGURE_ENV} distrib/hc-build ${CONFIGURE_ARGS})

# note: ghci not in PLIST since it doesnt work yet

FAKE_FLAGS+="stage=1"

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_FILES:C/(.+)/\1.html.tar.gz/g} \
	  ${DOC_FILES1:C/(.+)/\1-html.tar.gz/g}
	@tar zxf ${FULLDISTDIR}/${i} -C ${DOC_DIR}
.endfor

REGRESS_DEPENDS=::lang/python/2.2
REGRESS_RESULT=	${WRKSRC}/actual.result
REGRESS_FLAGS=	TEST_HC="${WRKSRC}/ghc/compiler/stage1/ghc-inplace"
REGRESS_FLAGS+=	EXTRA_RUNTEST_OPTS="--output-summary=${REGRESS_RESULT}" \
		PYTHON="${LOCALBASE}/bin/python"

# BSD w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.include <bsd.port.mk>
