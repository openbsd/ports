COMMENT=	proof-of-work proxy to protect web resources from scrapers

MODGO_MODNAME=	github.com/TecharoHQ/anubis
MODGO_VERSION=	v1.14.2

DISTNAME=	anubis-${MODGO_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://anubis.techaro.lol/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X github.com/TecharoHQ/anubis.Version=${MODGO_VERSION:S/v//}

post-install:
	rm ${PREFIX}/bin/containerbuild
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/anubis
	(sed -E 's,^([^#].*=),export \1,'; echo) \
		< ${WRKSRC}/run/anubis.env.default \
		> ${PREFIX}/share/examples/anubis/anubis.env.default

.include "modules.inc"
.include <bsd.port.mk>
