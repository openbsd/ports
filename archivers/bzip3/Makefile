COMMENT=	compress and decompress bzip3 files

V=		1.4.0
DISTNAME=	bzip3-${V}

SHARED_LIBS +=  bzip3                0.0      # 0.0

CATEGORIES=	archivers

HOMEPAGE=	https://github.com/kspalaiologos/bzip3

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

SITES=		https://github.com/kspalaiologos/bzip3/releases/download/${V}/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
