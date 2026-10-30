COMMENT=		kubectl authentication plugin for GKE

V=			37.2.3
DISTNAME=		gke-gcloud-auth-plugin-${V}
DISTFILES=		${DISTNAME}{v${V}}.tar.gz
WRKDIST=		${WRKDIR}/cloud-provider-gcp-gke-gcloud-auth-plugin-v${V}

CATEGORIES=		sysutils net

HOMEPAGE=		https://github.com/kubernetes/cloud-provider-gcp

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/kubernetes/cloud-provider-gcp/archive/refs/tags/gke-gcloud-auth-plugin/

WANTLIB += c pthread

MODULES=		lang/go
MODGO_GO111MODULE=	on
ALL_TARGET=		k8s.io/cloud-provider-gcp

MODGO_LDFLAGS +=	-X k8s.io/component-base/version.gitVersion=v${V}

do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ./cmd/gke-gcloud-auth-plugin

.include <bsd.port.mk>
