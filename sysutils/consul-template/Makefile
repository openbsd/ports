COMMENT=	template rendering and notifications with Consul

MODGO_MODNAME=	github.com/hashicorp/consul-template
MODGO_VERSION=	v0.42.0
DISTNAME=	consul-template-${MODGO_VERSION}
REVISION=	0

CATEGORIES=	sysutils net

HOMEPAGE=	https://www.consul.io/

# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

TEST_DEPENDS=	sysutils/consul

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	cp -R ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/consul-template

.include <bsd.port.mk>
