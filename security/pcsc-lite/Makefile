COMMENT=	resource manager for PC/SC

V=		2.2.3
DISTNAME=	pcsc-lite-${V}
CATEGORIES=	security
REVISION=	0

SHARED_LIBS+=	pcsclite_real	0.0 # 1.0.0
SHARED_LIBS+=	pcsclite	1.0 # 1.0.0
SHARED_LIBS+=	pcscspy		1.0 # 1.0.0

HOMEPAGE=	https://pcsclite.apdu.fr

SITES=		https://pcsclite.apdu.fr/files/

EXTRACT_SUFX=	.tar.xz

# BSD and GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread usb-1.0

MODULES=		devel/meson \
			lang/python

MODPY_BUILDDEP=		No

MODPY_ADJ_LINES=	src/spy/pcsc-spy

# thread-local storage
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

LIB_DEPENDS=		devel/libusb1

MODPY_ADJ_FILES=	src/spy/pcsc-spy

CONFIGURE_ARGS=	-Dipcdir=/var/run/pcscd \
		-Dlibsystemd=false \
		-Dlibudev=false \
		-Dlibusb=true \
		-Dpolkit=false \
		-Dserialconfdir=${SYSCONFDIR}/ccid \
		-Dusbdropdir=/usr/local/lib/pcsc/drivers

TEST_DEPENDS=	${BUILD_PKGPATH}=${V} \
		security/ccid

# The pcscd server needs to be up and running and tests prompt/wait for
# insertion of a smart card reader as well as smart card
TEST_IS_INTERACTIVE= Yes

_name=		pcsclite_real
_file=		"lib${_name}.so.${LIB${_name}_VERSION}"
CFLAGS+=	-DLIBPCSC=${_file:Q:Q}

post-test:
	${WRKBUILD}/testpcsc

.include <bsd.port.mk>
