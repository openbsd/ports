COMMENT=	proof-of-work proxy to protect web resources from scrapers

V=		1.23.0
DISTNAME=	anubis-src-vendor-npm-$V
PKGNAME=	anubis-$V

CATEGORIES=	www

HOMEPAGE=	https://anubis.techaro.lol/
SITES=		https://github.com/TecharoHQ/anubis/releases/download/v$V/

EPOCH=		0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X github.com/TecharoHQ/anubis.Version=$V
MODGO_GO111MODULE= on

# needs playwright
NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} \
		-o ./var/anubis ./cmd/anubis

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/var/anubis ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/anubis
	(sed -E 's,^([^#].*=),export \1,'; echo) \
		< ${WRKSRC}/run/default.env \
		> ${PREFIX}/share/examples/anubis/anubis.env.default

.include <bsd.port.mk>
