# $OpenBSD: Makefile,v 1.76 2015/08/20 21:58:22 juanfra Exp $

# vax:   no IEEE arithmetic
# sparc: fPIC version of libgcc.a needed but not available
NOT_FOR_ARCHS =	vax sparc

COMMENT =	high-level language for numerical computations

VERSION =	4.0.0
REVISION =	0
DISTNAME =	octave-${VERSION}
CATEGORIES =	math

SHARED_LIBS +=	octave		6.0 # 3.0
SHARED_LIBS +=	octgui		0.0 # 1.0
SHARED_LIBS +=	octinterp	5.0 # 3.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB}
WANTLIB += FLAC GL GLU GraphicsMagick GraphicsMagick++ ICE OSMesa QtGui
WANTLIB += QtNetwork QtOpenGL SM X11 X11-xcb Xau Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xft Xi Xinerama Xmu Xrandr Xrender
WANTLIB += Xt Xxf86vm amd arpack blas bz2 c camd ccolamd cholmod
WANTLIB += colamd crypto curl cxsparse drm expat fftw3 fftw3_threads
WANTLIB += fftw3f fftw3f_threads fltk fltk_gl fontconfig freetype
WANTLIB += gl2ps glapi glpk glut gmp hdf5 idn lapack lcms2
WANTLIB += ltdl lzma m ncurses ogg pcre png portaudio pthread
WANTLIB += pthread-stubs qhull qrupdate qscintilla2 sndfile sndio
WANTLIB += ssl stdc++ suitesparseconfig umfpack usbhid util vorbis
WANTLIB += vorbisenc xcb xcb-dri2 xcb-glx z

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	devel/gettext \
		fortran \
		x11/qt4

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		textproc/gsed \
		math/gnuplot

# configure checks for desktop-file-install(1)
BUILD_DEPENDS +=devel/desktop-file-utils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	${MODFORTRAN_LIB_DEPENDS} \
		audio/libsndfile \
		audio/portaudio-svn \
		devel/glpk \
		devel/pcre \
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
		x11/fltk

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
# --disable-readline: needs GNU readline
CONFIGURE_ARGS	=	${CONFIGURE_SHARED} \
			--disable-readline \
			--disable-java
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="lrelease4" \
		F77=${FC}

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

.include <bsd.port.mk>
