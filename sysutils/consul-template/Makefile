# $OpenBSD: Makefile,v 1.31 2022/03/05 09:24:26 ajacoutot Exp $

COMMENT=	template rendering and notifications with Consul

MODGO_MODNAME=	github.com/hashicorp/consul-template
MODGO_VERSION=	v0.28.0
DISTNAME=	consul-template-${MODGO_VERSION}

CATEGORIES=	sysutils net

HOMEPAGE=	https://www.consul.io/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>
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
