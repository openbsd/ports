COMMENT=	proof-of-work proxy to protect web resources from scrapers

MODGO_MODNAME=	github.com/TecharoHQ/anubis
MODGO_VERSION=	v1.15.2

DISTNAME=	anubis-${MODGO_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://anubis.techaro.lol/

EPOCH=		0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X github.com/TecharoHQ/anubis.Version=${MODGO_VERSION:S/v//}

# for patches; remove when no longer needed
WRKDIST=	${WRKSRC}

post-install:
	rm ${PREFIX}/bin/containerbuild
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/anubis
	(sed -E 's,^([^#].*=),export \1,'; echo) \
		< ${WRKSRC}/run/anubis.env.default \
		> ${PREFIX}/share/examples/anubis/anubis.env.default

.include "modules.inc"
.include <bsd.port.mk>
