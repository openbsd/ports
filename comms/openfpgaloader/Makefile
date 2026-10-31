COMMENT=	universal utility for programming FPGAs
CATEGORIES=	comms
V=		1.2.0
DISTNAME=	openfpgaloader-${V}

GH_ACCOUNT=	trabucayre
GH_PROJECT=	openFPGALoader
GH_TAGNAME=	v${V}

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
