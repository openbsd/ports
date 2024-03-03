COMMENT =      Scientific Programming Language

VERSION =	7.3.0
DISTNAME =	octave-${VERSION}
REVISION =	5
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	math

SHARED_LIBS +=	octave		16.0
SHARED_LIBS +=	octgui		10.0
SHARED_LIBS +=	octinterp	15.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU GraphicsMagick GraphicsMagick++
WANTLIB += ICE Qt5Core Qt5Gui Qt5Help Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Sql Qt5Widgets Qt5Xml SM X11 X11-xcb Xau Xdmcp Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm amd arpack
WANTLIB += blas bz2 c camd ccolamd cholmod colamd crypto curl
WANTLIB += curses cxsparse double-conversion drm ereadline execinfo
WANTLIB += expat fftw3 fftw3_threads fftw3f fftw3f_threads fontconfig
WANTLIB += freetype gl2ps glapi glib-2.0 glpk glut gmp graphite2
WANTLIB += gthread-2.0 harfbuzz hdf5 iconv icudata icui18n icuuc
WANTLIB += intl lapack lcms2 ltdl m mp3lame mpg123 nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_quictls ogg opus pcre pcre2-16
WANTLIB += pcre2-8 png portaudio qhull_r qrupdate qscintilla2_qt5
WANTLIB += sndfile sndio spqr ssl suitesparseconfig umfpack util
WANTLIB += vorbis vorbisenc xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-randr xcb-shm xcb-sync xcb-xfixes xshmfence z zstd
WANTLIB += ${MODFORTRAN_WANTLIB}

SITES =		${SITE_GNU:=octave/}

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
		archivers/gtar \
		x11/gtk+4,-guic

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		audio/libsndfile \
		audio/portaudio-svn \
		audio/lame \
		audio/mpg123 \
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
		textproc/icu4c \
		print/gl2ps \
		x11/qt5/qttools,-main

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS	=	--disable-java \
			--disable-rapidjson \
			--without-fltk

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/ereadline" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="${MODQT_LRELEASE}" \
		CFLAGS="${CFLAGS} -std=gnu11" \
		CXXFLAGS="${CXXFLAGS} -std=gnu++11" \
		QCOLLECTIONGENERATOR_QTVER=${LOCALBASE}/lib/qt5/bin/qcollectiongenerator \
		QHELPGENERATOR=${LOCALBASE}/lib/qt5/bin/qhelpgenerator

# Some tests fail when a tilde doesn't expand to a home directory
PORT_HOME = 	"${WRKBUILD}"

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

post-extract:
.for i in makeinfo texi2dvi texi2pdf
	ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

.include <bsd.port.mk>
