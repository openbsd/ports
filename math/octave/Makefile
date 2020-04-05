# $OpenBSD: Makefile,v 1.118 2020/04/05 15:44:52 naddy Exp $

COMMENT =	high-level language for numerical computations

VERSION =	5.1.0
DISTNAME =	octave-${VERSION}
CATEGORIES =	math
REVISION =	4

SHARED_LIBS +=	octave		12.0
SHARED_LIBS +=	octgui		6.0
SHARED_LIBS +=	octinterp	11.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes


MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt5

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		math/gnuplot \
		print/texinfo \
		textproc/gsed

MODFORTRAN_COMPILER =	gfortran

# configure checks for desktop-file-install(1)
BUILD_DEPENDS +=devel/desktop-file-utils

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		audio/libsndfile \
		audio/portaudio-svn \
		devel/glpk \
		devel/pcre \
		devel/readline \
		editors/qscintilla \
		graphics/GraphicsMagick \
		math/arpack \
		math/fftw3 \
		math/fftw3,float \
		math/hdf5 \
		math/qhull \
		math/qrupdate \
		math/suitesparse \
		net/curl \
		print/gl2ps \
		x11/qt5/qttools,-main

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
# --disable-readline: needs GNU readline
CONFIGURE_ARGS	=	--disable-java \
			octave_cv_version_2_6_0=yes
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/ereadline" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="${MODQT_LRELEASE}" \
		CFLAGS="${CFLAGS} -std=gnu11" \
		CXXFLAGS="${CXXFLAGS} -std=gnu++11" \
		QCOLLECTIONGENERATOR_QTVER=${LOCALBASE}/lib/qt5/bin/qcollectiongenerator \
		QHELPGENERATOR=${LOCALBASE}/lib/qt5/bin/qhelpgenerator

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

post-extract:
.for i in makeinfo texi2dvi texi2pdf
	ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

.include <bsd.port.mk>
