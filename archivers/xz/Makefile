COMMENT=	library and tools for XZ and LZMA compressed files

VERSION=	5.6.2
DISTNAME=	xz-${VERSION}
SHARED_LIBS=	lzma                 2.3      # 11.2
CATEGORIES=	archivers
DPB_PROPERTIES=	parallel

HOMEPAGE=	https://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=	https://github.com/tukaani-project/xz/releases/download/v${VERSION}/

# uses pledge()
WANTLIB=	c pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls \
		--enable-external-sha256
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
