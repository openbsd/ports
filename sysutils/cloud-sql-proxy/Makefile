COMMENT=		GCP Cloud SQL Auth proxy

MODGO_MODNAME=		github.com/GoogleCloudPlatform/cloud-sql-proxy/v2
MODGO_VERSION=		v2.27.0
DISTNAME=		cloud-sql-proxy-${MODGO_VERSION}

CATEGORIES=		sysutils databases net

HOMEPAGE=		https://github.com/GoogleCloudPlatform/cloud-sql-proxy

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

# Dockerfile
MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd.metadataString=openbsd

post-install:
	rm ${PREFIX}/bin/gendocs

.include "modules.inc"

.include <bsd.port.mk>
