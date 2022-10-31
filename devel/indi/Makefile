COMMENT-main=		Instrument-Neutral-Device-Interface protocol implemtation
COMMENT-libs=		INDI client libraries

GH_TAGNAME=		v1.9.8
GH_ACCOUNT=		indilib
GH_PROJECT=		indi

PKGNAME-libs=		lib${PKGNAME}

SHARED_LIBS +=	indiAlignmentDriver       0.0 # 0.0
SHARED_LIBS +=	indidriver                0.0 # 0.0
SHARED_LIBS +=	indilx200                 0.0 # 0.0

CATEGORIES=		devel

# LGPLv2.1 - GPLv2 - BSD
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -libs

# C++14
COMPILER=		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} cfitsio fftw3 gsl gslcblas iconv jpeg
WANTLIB += jpeg m nova ogg theoradec theoraenc usb-1.0 z

WANTLIB-main += ${WANTLIB} c curl ev indiAlignmentDriver indidriver
WANTLIB-main += rtlsdr

WANTLIB-libs += ${WANTLIB}

MODULES=		devel/cmake

LIB_DEPENDS=		astro/libnova \
			converters/libiconv \
			devel/gsl \
			devel/libusb1 \
			graphics/jpeg \
			math/cfitsio \
			math/fftw3 \
			multimedia/libtheora

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${BASE_PKGPATH},-libs \
			comms/rtl-sdr>=0.20130412p3 \
			devel/libev \
			net/curl

LIB_DEPENDS-libs=	${LIB_DEPENDS}

.include <bsd.port.mk>
