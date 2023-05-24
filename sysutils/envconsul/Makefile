COMMENT=	start subprocess with envvar populated from Consul and Vault

MODGO_MODNAME=	github.com/hashicorp/envconsul
MODGO_VERSION=	v0.13.2
DISTNAME=	envconsul-${MODGO_VERSION}

CATEGORIES=	sysutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

# go/src/github.com/hashicorp/envconsul/Makefile
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.Name=envconsul
MODGO_LDFLAGS +=	-X github.com/hashicorp/envconsul/version.GitCommit=${MODGO_VERSION}

.include "modules.inc"

.include <bsd.port.mk>
