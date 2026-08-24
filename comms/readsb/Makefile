COMMENT =	Mode-S/ADSB/TIS decoder
CATEGORIES =	comms

VERSION = 	3.16.16
GH_ACCOUNT =	wiedehopf
GH_PROJECT =	readsb
GH_TAGNAME =	v${VERSION}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread rtlsdr
WANTLIB += SoapySDR curses epoll-shim hackrf usb-1.0 z zstd

LIB_DEPENDS =	archivers/zstd \
		comms/hackrf \
		comms/rtl-sdr \
		comms/soapysdr \
		devel/epoll-shim

USE_GMAKE =	Yes

CFLAGS +=	"-I${LOCALBASE}/include"
CFLAGS +=	"-I${LOCALBASE}/include/libepoll-shim"
#CFLAGS +=	"-DENABLE_RTLSDR -DENABLE_HACKRF -DENABLE_SOAPYSDR -DHAVE_BIASTEE"

#MAKE_FLAGS =	CFLAGS="${CFLAGS}"
MAKE_ENV =	RTLSDR=yes \
		HACKRF=yes \
		SOAPYSDR=yes \
		HAVE_BIASTEE=yes

NO_TEST =	Yes

pre-build:
	mkdir -p ${WRKSRC}/compat/bsd
	cp ${FILESDIR}/*_compat.h ${WRKSRC}/compat/bsd

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/readsb ${WRKSRC}/viewadsb ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/readsb
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/readsb

.include <bsd.port.mk>
