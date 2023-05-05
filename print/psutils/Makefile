PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		2.10
DISTNAME=	psutils-${V}

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like (${WRKSRC}/LICENSE)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/rrthomas/psutils/releases/download/v${V}/

MODULES=	perl

BUILD_DEPENDS=	print/libpaper

RUN_DEPENDS=	devel/p5-IPC-Run3 \
		print/libpaper

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
