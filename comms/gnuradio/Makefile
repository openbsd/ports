# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:47 sthen Exp $

COMMENT =	signal-processing toolkit for SDR (software-defined radio)

DISTNAME =	gnuradio-3.7.13.4
REVISION =	2

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

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += QtCore QtGui SDL boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c fftw3f fftw3f_threads
WANTLIB += gsl gslcblas gsm iconv jack log4cpp m orc-0.4 portaudio qwt
WANTLIB += usb-1.0 zmq

MASTER_SITES =	https://www.gnuradio.org/releases/gnuradio/

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/cppunit \
		devel/py-six \
		devel/swig \
		devel/xdg-utils \
		net/cppzmq \
		textproc/xmlto \
		www/py-mako

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-cheetah \
		math/py-numpy \
		misc/shared-mime-info \
		textproc/py-lxml \
		x11/py-gtk2 \
		x11/py-qt4 \
		x11/py-wxPython

LIB_DEPENDS =	audio/jack \
		audio/gsm \
		audio/portaudio-svn \
		devel/boost \
		devel/gsl \
		devel/libusb1 \
		devel/log4cpp \
		devel/orc \
		devel/sdl \
		math/fftw3,float \
		net/zeromq \
		x11/qwt

CONFIGURE_ARGS =-DENABLE_DOXYGEN=OFF \
		-DENABLE_GR_COMEDI=OFF \
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
	cd ${PREFIX}/share/gnuradio/grc/freedesktop/ && \
	    mv gnuradio-grc.desktop ${PREFIX}/share/applications && \
	    mv gnuradio-grc.xml ${PREFIX}/share/mime

.include <bsd.port.mk>
