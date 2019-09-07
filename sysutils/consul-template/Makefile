# $OpenBSD: Makefile,v 1.14 2019/09/07 15:48:31 ajacoutot Exp $

COMMENT=		template rendering and notifications with Consul

GH_TAGNAME=		v0.20.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul-template

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go
TEST_DEPENDS=		sysutils/consul

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	${INSTALL_DATA} ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template

.include <bsd.port.mk>
