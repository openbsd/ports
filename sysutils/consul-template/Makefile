# $OpenBSD: Makefile,v 1.12 2019/05/04 21:46:17 sthen Exp $

COMMENT=		template rendering and notifications with Consul

GH_TAGNAME=		v0.19.5
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul-template
REVISION=		0

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go
TEST_DEPENDS=		sysutils/consul

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	${INSTALL_DATA} ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template

.include <bsd.port.mk>
