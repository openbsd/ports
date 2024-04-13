COMMENT=		tool for building, changing, and versioning infrastructure

MODGO_MODNAME=		github.com/hashicorp/terraform
MODGO_VERSION=		v1.8.0
DISTNAME=		terraform-${MODGO_VERSION}

WRKDIST=		${WRKDIR}/github.com/hashicorp/terraform@${MODGO_VERSION}

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSL-1.1 (https://www.hashicorp.com/bsl)
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

MODGO_LDFLAGS +=	-X github.com/hashicorp/terraform/version.dev=no

.include "modules.inc"

.include <bsd.port.mk>
