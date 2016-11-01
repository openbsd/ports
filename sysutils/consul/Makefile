# $OpenBSD: Makefile,v 1.4 2016/11/01 16:26:11 jasper Exp $

COMMENT=		service discovery and configuration tool

GH_TAGNAME=		v0.7.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul
	${SUBST_CMD} -c -m 0640 ${FILESDIR}/config.json.in \
		${PREFIX}/share/examples/consul/config.json

.include <bsd.port.mk>
