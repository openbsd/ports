COMMENT =		bloat-free SDR software with a focus on performance

V =			1.0.4
GH_ACCOUNT =		AlexandreRouma
GH_PROJECT =		SDRPlusPlus
GH_COMMIT =		a6df4d58e5f6b3045883a70aeb8fb41fd5dbf1d9
DISTNAME =		sdrpp-$V.0.20260323
CATEGORIES =		comms x11

HOMEPAGE =		https://www.sdrpp.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL glfw m fftw3f volk zstd
WANTLIB += rtlsdr portaudio usb-1.0
WANTLIB += ${COMPILER_LIBCXX} GLU c hackrf

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		comms/hackrf \
			comms/rtl-sdr \
			devel/libvolk \
			devel/libusb1 \
			graphics/glfw \
			math/fftw3,float \
			audio/portaudio-svn \
			archivers/zstd

CONFIGURE_ARGS +=	-DOPT_BUILD_AUDIO_SOURCE=OFF \
			-DOPT_BUILD_AUDIO_SINK=OFF \
			-DOPT_BUILD_SOAPY_SOURCE=OFF \
			-DOPT_BUILD_AIRSPYHF_SOURCE=OFF \
			-DOPT_BUILD_AIRSPY_SOURCE=OFF \
			-DOPT_BUILD_PLUTOSDR_SOURCE=OFF \
			-DOPT_BUILD_PORTAUDIO_SINK=ON \
			-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_INSTALL_PREFIX=${PREFIX}


.include <bsd.port.mk>
