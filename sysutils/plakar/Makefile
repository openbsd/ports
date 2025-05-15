# modernc.org/sqlite does not support
NOT_FOR_ARCHS=	i386

COMMENT=	distributed, versioned backups solution

MODGO_MODNAME=	github.com/PlakarKorp/plakar
MODGO_VERSION=	v1.0.1
DISTNAME=	plakar-${MODGO_VERSION}

HOMEPAGE=	https://plakar.io/

CATEGORIES=	sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

post-install:
	find ${WRKSRC}/cmd/plakar -iname \*.1 -exec \
		${INSTALL_MAN} {} ${PREFIX}/man/man1 \;

.include "modules.inc"

.include <bsd.port.mk>
