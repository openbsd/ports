COMMENT =	host software for the HackRF One SDR

V =		2023.01.1
DISTNAME =	hackrf-$V
REVISION =	1

SHARED_LIBS +=  hackrf                    0.0 # 0.8

CATEGORIES =	comms

HOMEPAGE =	https://greatscottgadgets.com/hackrf/

# GPLv2+ (tools), 3-clause BSD (library)
PERMIT_PACKAGE =	Yes

WANTLIB += c fftw3f m pthread usb-1.0

SITES =		https://github.com/mossmann/hackrf/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
LIB_DEPENDS =		devel/libusb1 \
			math/fftw3,float

CFLAGS +=	-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/host

.include <bsd.port.mk>
