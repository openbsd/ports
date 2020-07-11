# $OpenBSD: Makefile,v 1.17 2020/07/11 22:54:39 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	flash ROM programmer for BIOS etc

V=		1.2
DISTNAME=	flashrom-v${V}
PKGNAME=	flashrom-${V}
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.flashrom.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c ftdi1 usb-1.0 z

MASTER_SITES=	https://download.flashrom.org/releases/

# pciutils' libpci.a is linked statically; a patched version is required.
BUILD_DEPENDS=	sysutils/pciutils:patch
RUN_DEPENDS=	sysutils/dmidecode
LIB_DEPENDS=	devel/libftdi1 \
		devel/libusb1
MAKE_FLAGS=	LDFLAGS="-L./pciutils/lib" WARNERROR=no
FAKE_FLAGS=	PREFIX="${TRUEPREFIX}" MANDIR="${TRUEPREFIX}/man"

PATCHORIG=	.orig.port
USE_GMAKE=	Yes
NO_TEST=	Yes

pre-patch:
	mv ${WRKDIR}/sysutils/pciutils/pciutils-* ${WRKSRC}/pciutils

do-configure:
	${MAKE_PROGRAM} -C ${WRKSRC}/pciutils CC="${CC}" OPT="${CFLAGS}"

.include <bsd.port.mk>
