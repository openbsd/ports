# $OpenBSD: Makefile,v 1.20 2020/04/29 05:26:50 ajacoutot Exp $

COMMENT=	template rendering and notifications with Consul

GH_TAGNAME=	v0.25.0
GH_ACCOUNT=	hashicorp
GH_PROJECT=	consul-template

CATEGORIES=	sysutils net

HOMEPAGE=	https://www.consul.io/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
TEST_DEPENDS=	sysutils/consul

MASTER_SITES=	https://distfiles.bsdfrog.org/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	cp -R ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/consul-template

.include <bsd.port.mk>
