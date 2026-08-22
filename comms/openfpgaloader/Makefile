COMMENT=	universal utility for programming FPGAs
CATEGORIES=	comms

GH_ACCOUNT=	trabucayre
GH_PROJECT=	openFPGALoader
GH_COMMIT=	c8452092f9a31b1bfe8f2e09beadf2d0cc51e3f2
DISTNAME=	openfpgaloader-1.1.1pl20260714

HOMEPAGE=	https://github.com/trabucayre/openFPGALoader
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# APACHE-2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c ftdi1 m udev usb-1.0 z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DENABLE_OPTIM=OFF \
		-DENABLE_CMSISDAP=OFF
# CMSISDAP is enabled if libhidapi is detected, but build fails

LIB_DEPENDS=	devel/libftdi1 \
		devel/libusb1 \
		sysutils/libudev-openbsd

.include <bsd.port.mk>
