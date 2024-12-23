COMMENT-main=		Instrument-Neutral-Device-Interface protocol implemtation
COMMENT-libs=		INDI client libraries

GH_TAGNAME=		v2.1.1
GH_ACCOUNT=		indilib
GH_PROJECT=		indi

PKGNAME-libs=		lib${PKGNAME}

SHARED_LIBS +=	indiAlignmentDriver       0.1 # 0.0
SHARED_LIBS +=	indiclient                0.0 # 0.0
SHARED_LIBS +=	indidriver                0.1 # 0.0
SHARED_LIBS +=	indilx200                 0.1 # 0.0

CATEGORIES=		devel

# LGPLv2.1 - GPLv2 - BSD
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -libs

# C++14
COMPILER=		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} cfitsio curl fftw3 gsl gslcblas iconv
WANTLIB += jpeg m nova ogg theoradec theoraenc usb-1.0 z

WANTLIB-main += ${WANTLIB} c ev indiAlignmentDriver indiclient
WANTLIB-main += indidriver rtlsdr

WANTLIB-libs += ${WANTLIB}

MODULES=		devel/cmake

LIB_DEPENDS=		astro/libnova \
			converters/libiconv \
			devel/gsl \
			devel/libusb1 \
			graphics/jpeg \
			math/cfitsio \
			math/fftw3 \
			multimedia/libtheora \
			net/curl

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${BASE_PKGPATH},-libs \
			comms/rtl-sdr \
			devel/libev

LIB_DEPENDS-libs=	${LIB_DEPENDS}

.include <bsd.port.mk>
