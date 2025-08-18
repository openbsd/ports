COMMENT=	flash ROM programmer for BIOS etc

SHARED_LIBS +=  flashrom                  0.0 # 0.0

V=		1.6.0
DISTNAME=	flashrom-v${V}
PKGNAME=	flashrom-${V}
EXTRACT_SUFX=	.tar.xz
# portroach finds flashrom-1.0 but ignores flashrom-v1.0.1+
PORTROACH=	limit:^v?(1\.[1-9]|[2-9])

CATEGORIES=	sysutils

HOMEPAGE=	https://www.flashrom.org/
SITES=		https://download.flashrom.org/releases/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c crypto ftdi1 usb-1.0

MODULES=	devel/meson
BUILD_DEPENDS=	devel/cmocka \
		textproc/py-sphinx
LIB_DEPENDS=	devel/libftdi1 \
		devel/libusb1

# needs a .git directory
CONFIGURE_ARGS += -Dgenerate_authors_list=disabled

# for pciutils
USE_GMAKE=	Yes
FIX_EXTRACT_PERMISSIONS= Yes

# a patched pciutils libpci.a is needed (see patches/patchpci-*);
# also depend on normal libpci for pkg-config files
BUILD_DEPENDS+=	sysutils/pciutils \
		sysutils/pciutils:patch
MAKE_FLAGS+=	LDFLAGS="-L./pciutils/lib"
PATCH_LIST=	patchpci-* patch-*

pre-patch:
	mv ${WRKDIR}/sysutils/pciutils/pciutils-* ${WRKSRC}/pciutils

pre-configure:
	${MAKE_PROGRAM} -C ${WRKSRC}/pciutils CC="${CC}" OPT="${CFLAGS}"

.include <bsd.port.mk>
