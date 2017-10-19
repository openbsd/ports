# $OpenBSD: Makefile,v 1.18 2017/10/19 10:17:24 ajacoutot Exp $

# XXX no i386 equivalent to mem_openbsd_amd64.go
ONLY_FOR_ARCHS=		amd64

COMMENT=		service discovery and configuration tool

GH_TAGNAME=		v1.0.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		consul

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.consul.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/consul/scripts/build.sh
# go/src/github.com/hashicorp/consul/version/version.go
MODGO_LDFLAGS +=	-X github.com/hashicorp/consul/version.GitDescribe=${GH_TAGNAME}
MODGO_LDFLAGS +=	-X github.com/hashicorp/consul/version.Version=${GH_TAGNAME:S/v//}
MODGO_LDFLAGS +=	-X github.com/hashicorp/consul/version.VersionPrerelease="" # empty

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul
	${SUBST_CMD} -c -m 0640 ${FILESDIR}/config.json.in \
		${PREFIX}/share/examples/consul/config.json

.include <bsd.port.mk>
