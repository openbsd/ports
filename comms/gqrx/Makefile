COMMENT =		SDR receiver GUI based on GNU Radio and Qt

V =			2.17.7
GH_ACCOUNT = 		gqrx-sdr
GH_PROJECT =		gqrx
GH_TAGNAME =		v${V}
CATEGORIES =		comms x11

HOMEPAGE =		https://gqrx.dk/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt6Core Qt6Gui Qt6Network Qt6Widgets
WANTLIB += m gnuradio-analog gnuradio-blocks gnuradio-filter 
WANTLIB += gnuradio-fft gnuradio-osmosdr gnuradio-runtime volk
WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_thread-mt
WANTLIB += c fmt gmp gmpxx gnuradio-audio gnuradio-digital gnuradio-network
WANTLIB += gnuradio-pmt spdlog Qt6Svg Qt6SvgWidgets

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		comms/gnuradio \
			comms/gr-osmosdr \
			devel/libvolk \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_ARGS +=	-DLINUX_AUDIO_BACKEND=OFF \
			-DPULSEAUDIO_FOUND=OFF

CONFIGURE_ARGS +=	-Dgr-osmosdr_DIR=${LOCALBASE}/lib/cmake/gr-osmosdr


.include <bsd.port.mk>
