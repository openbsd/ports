COMMENT =      Scientific Programming Language

VERSION =	11.1.0
DISTNAME =	octave-${VERSION}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	math
REVISION =	0

SHARED_LIBS +=	octave		19.0
SHARED_LIBS +=	octgui		13.0
SHARED_LIBS +=	octinterp	18.0
SHARED_LIBS +=	octmex		0.0

HOMEPAGE =	https://www.octave.org

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL FLAC GL GLU GraphicsMagick GraphicsMagick++
WANTLIB += ICE LLVM Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Help
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB += Qt6Sql Qt6Widgets Qt6Xml SM X11 X11-xcb Xau Xdmcp Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm aec amd arpack
WANTLIB += b2 blas brotlicommon brotlidec bz2 c camd ccolamd cholmod
WANTLIB += colamd crypto curl curses cxsparse dbus-1 double-conversion
WANTLIB += drm drm_amdgpu duktape elf epoll-shim ereadline
WANTLIB += execinfo expat ffi fftw3 fftw3_threads fftw3f fftw3f_threads
WANTLIB += fontconfig freetype gbm gio-2.0 gl2ps glapi glib-2.0
WANTLIB += glpk glut gmodule-2.0 gmp gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz hdf5 iconv icudata icui18n icuuc intl lapack
WANTLIB += lcms2 ltdl m mp3lame mpg123 nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl ogg opus pciaccess pcre2-16
WANTLIB += pcre2-8 png portaudio proxy qhull_r qrupdate qscintilla2_qt6
WANTLIB += sndfile sndio spqr ssl suitesparseconfig sz umfpack
WANTLIB += util vorbis vorbisenc wayland-client xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-randr xcb-shm xcb-sync xcb-xfixes
WANTLIB += xkbcommon xshmfence z zstd

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" 
WANTLIB += drm_intel
.endif

SITES =		${SITE_GNU:=octave/}

MODULES =	fortran \
		x11/qt6

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		devel/fast-float \
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
		wayland/wayland \
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
.for i in makeinfo texi2dvi texi2pdf texindex
	ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

.include <bsd.port.mk>
