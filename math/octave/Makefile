COMMENT =      Scientific Programming Language

VERSION =	9.3.0
DISTNAME =	octave-${VERSION}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	math
REVISION =	0

SHARED_LIBS +=	octave		18.0
SHARED_LIBS +=	octgui		12.0
SHARED_LIBS +=	octinterp	17.0

HOMEPAGE =	https://www.octave.org

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL GLU GraphicsMagick GraphicsMagick++
WANTLIB += EGL Qt6Core Qt6DBus Qt6Gui Qt6Help Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6PrintSupport Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml Qt6Core5Compat b2 brotlicommon brotlidec dbus-1 duktape
WANTLIB += gbm gio-2.0 gmodule-2.0 gobject-2.0 proxy qscintilla2_qt6
WANTLIB += ffi xkbcommon
WANTLIB += ICE SM X11 X11-xcb Xau Xdmcp Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm amd arpack
WANTLIB += blas bz2 c camd ccolamd cholmod colamd crypto curl
WANTLIB += curses cxsparse double-conversion drm ereadline execinfo
WANTLIB += expat fftw3 fftw3_threads fftw3f fftw3f_threads fontconfig
WANTLIB += freetype gl2ps glapi glib-2.0 glpk glut gmp graphite2
WANTLIB += gthread-2.0 harfbuzz hdf5 iconv icudata icui18n icuuc
WANTLIB += intl lapack lcms2 ltdl m mp3lame mpg123 nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_quictls ogg opus pcre2-16
WANTLIB += pcre2-8 png portaudio qhull_r qrupdate
WANTLIB += sndfile sndio spqr ssl suitesparseconfig umfpack util
WANTLIB += vorbis vorbisenc xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-randr xcb-shm xcb-sync xcb-xfixes xshmfence z zstd
WANTLIB += ${MODFORTRAN_WANTLIB}

SITES =		${SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt6

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		math/gnuplot \
		print/texinfo \
		textproc/gsed \
		textproc/rapidjson

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
		archivers/brotli \
		devel/glpk \
		devel/readline \
		editors/qscintilla,qt6 \
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
		x11/qt6/qt5compat \
		x11/qt6/qttools

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS	=	--disable-java \
			--host=${GNU_HOST} \
			--without-fltk \
			--without-libreadline-prefix \
			--with-libreadline-prefix=${LOCALBASE}

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/ereadline" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"


# Some tests fail when a tilde doesn't expand to a home directory
PORTHOME = 	${WRKBUILD}
TEST_ENV +=	HOME=${PORTHOME}

# Construct a host without OSREV
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd
GNU_HOST =	${GCC_ARCH:S/amd64/x86_64/}

SUBST_VARS +=	GNU_HOST VERSION

post-extract:
.for i in makeinfo texi2dvi texi2pdf
	ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

.include <bsd.port.mk>
