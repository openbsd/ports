# $OpenBSD: Makefile,v 1.90 2016/11/04 11:35:19 sthen Exp $

COMMENT =	high-level language for numerical computations

VERSION =	4.0.2
DISTNAME =	octave-${VERSION}
REVISION =	1
CATEGORIES =	math

SHARED_LIBS +=	octave		7.0 # 3.0
SHARED_LIBS +=	octgui		1.0 # 1.0
SHARED_LIBS +=	octinterp	6.0 # 3.0

HOMEPAGE =	https://www.gnu.org/software/octave/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODFORTRAN_WANTLIB}
WANTLIB += FLAC GL GLU GraphicsMagick GraphicsMagick++ ICE OSMesa QtGui
WANTLIB += QtNetwork QtOpenGL SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm amd
WANTLIB += arpack blas bz2 c camd ccolamd cholmod colamd crypto curl
WANTLIB += cxsparse drm ereadline expat fftw3 fftw3_threads fftw3f
WANTLIB += fftw3f_threads fltk fltk_gl fontconfig freetype gl2ps glapi
WANTLIB += glpk glut gmp hdf5 lapack lcms2 ltdl lzma m ncurses nghttp2
WANTLIB += ogg pcre png portaudio pthread pthread-stubs qhull qrupdate
WANTLIB += qscintilla2 sndfile sndio ssl stdc++ suitesparseconfig
WANTLIB += umfpack usbhid util vorbis vorbisenc xcb xcb-dri2 xcb-glx z

MASTER_SITES =	${MASTER_SITE_GNU:=octave/}

MODULES =	devel/gettext \
		fortran \
		x11/qt4

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} \
		print/texinfo \
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
		x11/fltk

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
# --disable-readline: needs GNU readline
CONFIGURE_ARGS	=	--disable-java
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
		-I${LOCALBASE}/include/ereadline" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LRELEASE="${MODQT_LRELEASE}" \
		F77=${FC}

# needed to build on amd64
GCC_ARCH =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
GNU_ARCH =	${GCC_ARCH:S/amd64/x86_64/}
SUBST_VARS =	GNU_ARCH VERSION

post-extract:
.for i in makeinfo texi2dvi texi2pdf
	ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

.include <bsd.port.mk>
