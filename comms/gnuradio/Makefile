BROKEN-aarch64 = invalid asm
BROKEN-i386 =	frequent cmake-related build failures
# INSTALL stage looks for libgnuradio-runtime.so.3.8.2.0 but the file is
# really named libgnuradio-runtime.so.0.0

COMMENT =	signal-processing toolkit for SDR (software-defined radio)

V =		3.8.2.0
DISTNAME =	gnuradio-$V
REVISION =	4

SHARED_LIBS +=  gnuradio-analog           0.0 # 3.7
SHARED_LIBS +=  gnuradio-atsc             0.0 # 3.7
SHARED_LIBS +=  gnuradio-audio            0.0 # 3.7
SHARED_LIBS +=  gnuradio-blocks           0.0 # 3.7
SHARED_LIBS +=  gnuradio-channels         0.0 # 3.7
SHARED_LIBS +=  gnuradio-digital          0.0 # 3.7
SHARED_LIBS +=  gnuradio-dtv              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fcd              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fec              0.0 # 3.7
SHARED_LIBS +=  gnuradio-fft              0.0 # 3.7
SHARED_LIBS +=  gnuradio-filter           0.0 # 3.7
SHARED_LIBS +=  gnuradio-noaa             0.0 # 3.7
SHARED_LIBS +=  gnuradio-pager            0.0 # 3.7
SHARED_LIBS +=  gnuradio-pmt              0.0 # 3.7
SHARED_LIBS +=  gnuradio-qtgui            0.0 # 3.7
SHARED_LIBS +=  gnuradio-runtime          0.0 # 3.7
SHARED_LIBS +=  gnuradio-trellis          0.0 # 3.7
SHARED_LIBS +=  gnuradio-video-sdl        0.0 # 3.7
SHARED_LIBS +=  gnuradio-vocoder          0.0 # 3.7
SHARED_LIBS +=  gnuradio-wavelet          0.0 # 3.7
SHARED_LIBS +=  gnuradio-wxgui            0.0 # 3.7
SHARED_LIBS +=  gnuradio-zeromq           0.0 # 3.7
SHARED_LIBS +=  volk                      0.0 # 3.7

CATEGORIES =	comms

HOMEPAGE =	https://www.gnuradio.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += Qt5Core Qt5Gui Qt5Widgets SDL boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c fftw3f
WANTLIB += fftw3f_threads gmp gmpxx gsl gslcblas gsm iconv jack
WANTLIB += log4cpp m orc-0.4 portaudio qwt zmq

MASTER_SITES =	https://github.com/gnuradio/gnuradio/releases/download/v$V/

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/cppunit \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/swig \
		devel/xdg-utils \
		math/py-numpy${MODPY_FLAVOR} \
		net/cppzmq \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/xmlto \
		www/py-mako${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-cheetah${MODPY_FLAVOR} \
		graphics/py-matplotlib${MODPY_FLAVOR} \
		math/py-networkx${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		math/py-scipy${MODPY_FLAVOR} \
		misc/shared-mime-info \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/jack \
		audio/gsm \
		audio/portaudio-svn \
		devel/boost \
		devel/gmp,-cxx \
		devel/gsl \
		devel/log4cpp \
		devel/orc \
		devel/sdl \
		math/fftw3,float \
		net/zeromq \
		x11/qwt

CONFIGURE_ARGS =-DENABLE_DOXYGEN=OFF \
		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
		-DENABLE_GR_UHD=OFF \
		-DGR_PKG_DOC_DIR="${PREFIX}/share/doc/gnuradio" \
		-DGR_PKG_CONF_DIR="${PREFIX}/share/examples/gnuradio/conf.d" \
		-DGR_PREFSDIR="${PREFIX}/share/examples/gnuradio/conf.d" \
		-DSYSCONFDIR="${SYSCONFDIR}"

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib -liconv"

MAKE_ENV =	VERBOSE=1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,mime}
	mv ${PREFIX}/share/gnuradio/examples/* ${PREFIX}/share/examples/gnuradio
	rmdir ${PREFIX}/share/gnuradio/examples

.include <bsd.port.mk>
