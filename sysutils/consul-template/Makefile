# $OpenBSD: Makefile,v 1.3 2017/02/11 08:52:16 jasper Exp $

COMMENT=		template rendering and notifications with Consul

GH_TAGNAME=		v0.18.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul-template

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	${INSTALL_DATA} ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template

.include <bsd.port.mk>
