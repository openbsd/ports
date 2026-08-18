# bundled header-only library "cpp-httplib" doesn't support 32-bit
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT-main=		astronomical instrument automation/control software
COMMENT-libs=		Instrument-Neutral-Device-Interface protocol libraries

GH_TAGNAME=		v2.2.4.2
REVISION=		0
GH_ACCOUNT=		indilib
GH_PROJECT=		indi

HOMEPAGE =		https://indilib.org/

PKGNAME-libs=		lib${PKGNAME}

SHARED_LIBS +=	indiAlignmentDriver       1.0
SHARED_LIBS +=	indiclient                1.1
SHARED_LIBS +=	indidriver                1.0
SHARED_LIBS +=	indilx200                 1.0

CATEGORIES=		devel

# LGPLv2.1 - GPLv2 - BSD
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -libs

# C++14
COMPILER=		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} cfitsio curl fftw3 gsl gslcblas iconv
WANTLIB += jpeg m nova ogg theoradec theoraenc udev usb-1.0 z

WANTLIB-main += ${WANTLIB} c ev indiAlignmentDriver indiclient
WANTLIB-main += indidriver rtlsdr

WANTLIB-libs += ${WANTLIB} erfa

MODULES=		devel/cmake

LIB_DEPENDS=		astro/liberfa \
			astro/libnova \
			converters/libiconv \
			devel/gsl \
			devel/libusb1 \
			graphics/jpeg \
			math/cfitsio \
			math/fftw3 \
			multimedia/libtheora \
			net/curl \
			sysutils/libudev-openbsd

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${BASE_PKGPATH},-libs \
			comms/rtl-sdr \
			devel/libev

LIB_DEPENDS-libs=	${LIB_DEPENDS}

.include <bsd.port.mk>
