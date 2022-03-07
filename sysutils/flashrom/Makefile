COMMENT=	flash ROM programmer for BIOS etc

V=		1.2
DISTNAME=	flashrom-v${V}
PKGNAME=	flashrom-${V}
EXTRACT_SUFX=	.tar.bz2
# portroach finds flashrom-1.0 but ignores flashrom-v1.0.1+
PORTROACH=	limit:^v?(1\.[1-9]|[2-9])
REVISION=	1

CATEGORIES=	sysutils

HOMEPAGE=	https://www.flashrom.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c ftdi1 usb-1.0 z

MASTER_SITES=	https://download.flashrom.org/releases/

LIB_DEPENDS=	devel/libftdi1 \
		devel/libusb1
MAKE_FLAGS+=	WARNERROR=no
FAKE_FLAGS=	PREFIX="${TRUEPREFIX}" MANDIR="${TRUEPREFIX}/man"

PATCHORIG=	.orig.port
USE_GMAKE=	Yes
NO_TEST=	Yes

.if ${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == i386
# a patched pciutils libpci.a is needed (see patches/patchpci-*)
BUILD_DEPENDS=	sysutils/pciutils:patch
MAKE_FLAGS+=	LDFLAGS="-L./pciutils/lib"
PATCH_LIST=	patchpci-* patch-*

pre-patch:
	mv ${WRKDIR}/sysutils/pciutils/pciutils-* ${WRKSRC}/pciutils

do-configure:
	${MAKE_PROGRAM} -C ${WRKSRC}/pciutils CC="${CC}" OPT="${CFLAGS}"
.else
MAKE_FLAGS+=	CONFIG_ENABLE_LIBPCI_PROGRAMMERS=no
.endif

.include <bsd.port.mk>
