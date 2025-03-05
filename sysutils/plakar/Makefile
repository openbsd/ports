COMMENT=	distributed, versioned backups solution

MODGO_MODNAME=	github.com/PlakarKorp/plakar
MODGO_VERSION=	v1.0.0-beta.3
DISTNAME=	plakar-${MODGO_VERSION}
PKGNAME=	plakar-1.0.0beta3
REVISION=	0

# for patches
WRKDIST=	${WRKDIR}/github.com/PlakarKorp/plakar@${MODGO_VERSION}

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
