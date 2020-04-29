# $OpenBSD: Makefile,v 1.3 2020/04/29 05:30:12 ajacoutot Exp $

COMMENT=		start subprocess with envvar populated from Consul and Vault

GH_TAGNAME=		v0.9.3
GH_ACCOUNT=		hashicorp
GH_PROJECT=		envconsul

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

# go/src/github.com/hashicorp/envconsul/Makefile
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.Name=${GH_PROJECT}
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.GitCommit=${GH_TAGNAME}

MASTER_SITES=		https://distfiles.bsdfrog.org/

.include <bsd.port.mk>
