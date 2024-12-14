COMMENT =	signal-processing toolkit for SDR (software-defined radio)

GH_TAGNAME =	v3.10.11.0
GH_ACCOUNT =	gnuradio
GH_PROJECT =	gnuradio

SHARED_LIBS +=  gnuradio-analog           1.0 # 3.7
SHARED_LIBS +=  gnuradio-atsc             1.0 # 3.7
SHARED_LIBS +=  gnuradio-audio            1.0 # 3.7
SHARED_LIBS +=  gnuradio-blocks           1.0 # 3.7
SHARED_LIBS +=  gnuradio-channels         1.0 # 3.7
SHARED_LIBS +=  gnuradio-digital          1.0 # 3.7
SHARED_LIBS +=  gnuradio-dtv              1.0 # 3.7
SHARED_LIBS +=  gnuradio-fcd              1.0 # 3.7
SHARED_LIBS +=  gnuradio-fec              1.0 # 3.7
SHARED_LIBS +=  gnuradio-fft              1.0 # 3.7
SHARED_LIBS +=  gnuradio-filter           1.0 # 3.7
SHARED_LIBS +=  gnuradio-noaa             1.0 # 3.7
SHARED_LIBS +=  gnuradio-network          1.0 # 0.0
SHARED_LIBS +=  gnuradio-pager            1.0 # 3.7
SHARED_LIBS +=  gnuradio-pdu              1.0 # 0.0
SHARED_LIBS +=  gnuradio-pmt              1.0 # 3.7
SHARED_LIBS +=  gnuradio-qtgui            1.0 # 3.7
SHARED_LIBS +=  gnuradio-runtime          1.0 # 3.7
SHARED_LIBS +=  gnuradio-trellis          1.0 # 3.7
SHARED_LIBS +=  gnuradio-video-sdl        1.0 # 3.7
SHARED_LIBS +=  gnuradio-vocoder          1.0 # 3.7
SHARED_LIBS +=  gnuradio-wavelet          1.0 # 3.7
SHARED_LIBS +=  gnuradio-wxgui            1.0 # 3.7
SHARED_LIBS +=  gnuradio-zeromq           1.0 # 3.7

CATEGORIES =	comms

HOMEPAGE =	https://www.gnuradio.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt5Core Qt5Gui Qt5Widgets SDL boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_unit_test_framework-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c fftw3f
WANTLIB += fftw3f_threads fmt gmp gmpxx gsl gslcblas gsm iconv jack
WANTLIB += m portaudio qwt sndfile spdlog volk zmq

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/cppunit \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-pybind11${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/xdg-utils \
		graphics/py-pyqtgraph${MODPY_FLAVOR} \
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
		x11/gtk+4,-guic

# gnuradio-companion
RUN_DEPENDS +=	devel/py-gobject3${MODPY_FLAVOR} \
		x11/gtk+3

LIB_DEPENDS =	audio/jack \
		audio/gsm \
		audio/portaudio-svn \
		devel/boost \
		devel/fmt \
		devel/gmp,-cxx \
		devel/gsl \
		devel/libvolk \
		devel/sdl \
		devel/spdlog \
		math/fftw3,float \
		net/zeromq \
		x11/qwt

CONFIGURE_ARGS =-DENABLE_DOXYGEN=OFF \
		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
		-DENABLE_GR_UHD=OFF \
		-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11/ \
		-DGR_MAN_DIR="${PREFIX}/man" \
		-DGR_PKG_DOC_DIR="${PREFIX}/share/doc/gnuradio" \
		-DGR_PKG_CONF_DIR="${PREFIX}/share/examples/gnuradio/conf.d" \
		-DGR_PREFSDIR="${PREFIX}/share/examples/gnuradio/conf.d" \
		-DSYSCONFDIR="${SYSCONFDIR}"

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib -liconv"

MAKE_ENV =	VERBOSE=1

CFLAGS =	-Wno-implicit-const-int-float-conversion

post-install:
	mv ${PREFIX}/share/gnuradio/examples/* ${PREFIX}/share/examples/gnuradio
	rmdir ${PREFIX}/share/gnuradio/examples

.include <bsd.port.mk>
