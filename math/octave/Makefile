# $OpenBSD: Makefile,v 1.43 2009/06/22 17:00:24 naddy Exp $

# vax:   no IEEE arithmetic
# sparc: fPIC version of libgcc.a needed but not available
NOT_FOR_ARCHS=	vax sparc

COMMENT=	high-level language for numerical computations

VERSION=	3.0.5
DISTNAME=	octave-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	math

SHARED_LIBS=	cruft		5.0 \
		octave		5.0 \
		octinterp	4.0

HOMEPAGE=	http://www.gnu.org/software/octave/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c g2c m ncurses readline stdc++ z

MASTER_SITES=	ftp://ftp.octave.org/pub/octave/ \
		ftp://ftp.u-aizu.ac.jp/pub/SciEng/numanal/Octave/ \
		ftp://neacm.fe.up.pt/pub/octave/

BUILD_DEPENDS=	::devel/desktop-file-utils
RUN_DEPENDS=	::devel/gmake \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	fftw3.>=3::math/fftw3 \
		lapack.>=3::math/lapack \
		blas.>=1::math/blas \
		amd::math/amd \
		pcre.>=1::devel/pcre \
		curl.>=6::net/curl

USE_GMAKE=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-fftw \
		--without-mpi \
		--without-hdf5
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		F77=${FC} \
		SED=/usr/bin/sed
MAKE_ENV=	LIBcruft_VERSION=${LIBcruft_VERSION} \
		LIBoctave_VERSION=${LIBoctave_VERSION} \
		LIBoctinterp_VERSION=${LIBoctinterp_VERSION}

.if ${MACHINE_ARCH} == "alpha"
CONFIGURE_ENV+=	FFLAGS="${FFLAGS}"
.endif

# needed to build on amd64
GCC_ARCH=	${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}
GNU_ARCH=	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS=	GNU_ARCH VERSION

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
HTMLDOCS=	interpreter liboctave
post-install:
	@cd ${PREFIX}/share/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
	@cd ${PREFIX}/libexec/octave && \
		perl -pi -e "s,${PREFIX},${TRUEPREFIX}," ls-R
.for d in ${HTMLDOCS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/octave/${d}
	${INSTALL_DATA} ${WRKBUILD}/doc/${d}/HTML/*.html \
		${PREFIX}/share/doc/octave/${d}
.endfor

.include <bsd.port.mk>
