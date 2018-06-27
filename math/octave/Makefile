# $OpenBSD: Makefile,v 1.104 2018/06/27 21:03:57 espie Exp $

COMMENT =	high-level language for numerical computations

VERSION =	4.4.0
DISTNAME =	octave-${VERSION}
CATEGORIES =	math
REVISION =	0

SHARED_LIBS +=	octave		10.0
SHARED_LIBS +=	octgui		4.0
SHARED_LIBS +=	octinterp	9.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB}
WANTLIB += FLAC GL GLU GraphicsMagick GraphicsMagick++ ICE
WANTLIB += Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Widgets Qt5Core
WANTLIB += Qt5Help Qt5Sql qscintilla2_qt5
WANTLIB += SM X11 X11-xcb Xdamage
WANTLIB += Xext Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm amd
WANTLIB += arpack blas bz2 c camd ccolamd cholmod colamd crypto curl
WANTLIB += cxsparse drm ereadline expat fftw3 fftw3_threads fftw3f
WANTLIB += fftw3f_threads fontconfig freetype gl2ps glapi
WANTLIB += glpk glut gmp hdf5 iconv intl lapack lcms2 ltdl lzma m curses
WANTLIB += nghttp2 ogg pcre png portaudio pthread qhull qrupdate
WANTLIB += sndfile sndio ssl ${COMPILER_LIBCXX} suitesparseconfig
WANTLIB += umfpack util vorbis vorbisenc xcb xcb-dri2 xcb-glx z
WANTLIB += execinfo glib-2.0 graphite2 gthread-2.0 harfbuzz icudata
WANTLIB += icui18n icuuc pcre2-16

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt5

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		print/texinfo \
		textproc/gsed \
		math/gnuplot

MODFORTRAN_COMPILER =	gfortran

# configure checks for desktop-file-install(1)
BUILD_DEPENDS +=devel/desktop-file-utils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		audio/libsndfile \
		audio/portaudio-svn \
		devel/glpk \
		devel/pcre \
		devel/readline \
		editors/qscintilla,qt5 \
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
