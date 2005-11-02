# $OpenBSD: Makefile,v 1.9 2005/11/02 18:20:58 alek Exp $

NOT_FOR_ARCHS=	vax

COMMENT=	"high-level language for numerical computations"

VERSION=	2.1.71
DISTNAME=	octave-${VERSION}
CATEGORIES=	math

HOMEPAGE=	http://www.octave.org/

MAINTAINER=	Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c g2c m ncurses readline stdc++

MASTER_SITES=	ftp://ftp.octave.org/pub/octave/ \
		ftp://ftp.eos.hokudai.ac.jp/pub/GNU/misc/octave \
		ftp://neacm.fe.up.pt/pub/octave/ \
		ftp://ftp.u-aizu.ac.jp/pub/SciEng/numanal/Octave

MODULES=	gcc3
MODGCC3_ARCHES=	alpha sparc
MODGCC3_LANGS=	C++
BUILD_DEPENDS=	::print/teTeX/base \
		::textproc/texi2html
REGRESS_DEPENDS=::devel/dejagnu

USE_GMAKE=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MAKE_ENV=	SHLIB_VER=${SHLIB_VER}

# need shared library version for machines which support shared libraries.
SHLIB_VER=	2.0
GCC_ARCH=	${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
GNU_ARCH=	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS=	GNU_ARCH VERSION SHLIB_VER

# need to use fpic version of libgcc.a
post-configure:
	@perl -pi -e 's#(gcc-lib/${GCC_ARCH}/[\d.]+)\s#\1/fpic #' \
		${WRKBUILD}/Makeconf

.ifmake regress
# some tests need HOME to be writable
PORTHOME=	/tmp
# define some user for tilde expansion test
MAKE_ENV+=	USER=nobody
.endif

post-regress:
	@rm -f /tmp/oct-*

# fix ls-R and install HTML documentation
post-install:
	@cd ${PREFIX}/share/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
	@cd ${PREFIX}/libexec/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/octave
	${INSTALL_DATA} ${WRKBUILD}/doc/interpreter/octave*.html \
		${PREFIX}/share/doc/octave

.include <bsd.port.mk>
