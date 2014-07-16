# $OpenBSD: Makefile,v 1.67 2014/07/16 14:35:38 naddy Exp $

# vax:   no IEEE arithmetic
# sparc: fPIC version of libgcc.a needed but not available
NOT_FOR_ARCHS =	vax sparc

COMMENT =	high-level language for numerical computations

VERSION =	3.0.5
DISTNAME =	octave-${VERSION}
REVISION =	14
CATEGORIES =	math

SHARED_LIBS =	cruft		5.0 \
		octave		5.0 \
		octinterp	4.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=	c m ncurses readline stdc++ z ${MODFORTRAN_WANTLIB} \
		fftw3>=3 lapack>=3 blas>=1 amd umfpack pcre>=1 curl>=6

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	fortran
MODFORTRAN_COMPILER = g77

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS}

# configure checks for desktop-file-install(1)
BUILD_DEPENDS +=devel/desktop-file-utils

RUN_DEPENDS =	devel/gmake \
		devel/desktop-file-utils

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		math/fftw3 \
		math/lapack \
		math/blas \
		math/amd \
		math/umfpack \
		devel/pcre \
		net/curl

USE_GMAKE =	Yes
USE_GROFF =	Yes

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS	=	${CONFIGURE_SHARED} \
		--with-fftw \
		--without-mpi \
		--without-hdf5
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		F77=${FC} \
		SED=/usr/bin/sed
MAKE_ENV =	LIBcruft_VERSION=${LIBcruft_VERSION} \
		LIBoctave_VERSION=${LIBoctave_VERSION} \
		LIBoctinterp_VERSION=${LIBoctinterp_VERSION}

.if ${MACHINE_ARCH} == "alpha"
CONFIGURE_ENV +=	FFLAGS="${FFLAGS}"
.endif

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

# need to use fpic version of libgcc.a
post-configure:
	@perl -pi -e 's#(gcc-lib/${GCC_ARCH}/[\d.]+)\s#\1/fpic #' \
		${WRKBUILD}/Makeconf

.ifmake test
# some tests need HOME to be writable
PORTHOME =	/tmp
# define some user for tilde expansion test
MAKE_ENV +=	USER=nobody
.endif

post-test:
	@rm -f /tmp/oct-*

# fix ls-R and install HTML documentation
HTMLDOCS =	interpreter liboctave
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
