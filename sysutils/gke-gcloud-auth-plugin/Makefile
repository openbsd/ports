COMMENT=		kubectl authentication plugin for GKE

V=			0.25.3
PKGNAME=		gke-gcloud-auth-plugin-${V}

CATEGORIES=		sysutils net

HOMEPAGE=		https://github.com/kubernetes/cloud-provider-gcp

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

# ftp https://github.com/kubernetes/cloud-provider-gcp/archive/refs/tags/providers/v${V}.tar.gz
# tar xzf v${V}.tar.gz
# cd cloud-provider-gcp-providers-v${V} && go mod tidy && go mod vendor
# cd .. && tar czf cloud-provider-gcp-${V}.tar.gz cloud-provider-gcp-providers-v${V}
SITES=			https://distfiles.bsdfrog.org/
DISTNAME=		cloud-provider-gcp-${V}
WRKDIST=		${WRKDIR}/cloud-provider-gcp-providers-v${V}

WANTLIB += c pthread

# cannot use go.port.mk, so cherry-pick what we need
BUILD_DEPENDS=		lang/go
PORTHOME=		${WRKDIR}
MAKE_ENV=		GOPATH=${WRKDIR}/go \
			GOCACHE=${WRKDIR}/go-cache
.if empty(DEBUG)
LDFLAGS +=		-s -w
.endif

# git checkout the corresponding tag then:
# cd cloud-provider-gcp && bash ./tools/workspace-status.sh | grep gitVersion | cut -d ' ' -f2
LDFLAGS +=		-X k8s.io/component-base/version.gitVersion=v1.25.3-alpha+3d24dccb9fe6afb401500fc91537af1789b9e07d

do-build:
	cd ${WRKSRC}/cmd/gke-gcloud-auth-plugin && \
		${SETENV} ${MAKE_ENV} go build \
		-ldflags="${LDFLAGS}" \
		-mod=vendor -modcacherw -trimpath -buildvcs=false

do-install:
# INSTALL_SCRIPT: do not strip(1) go binaries
	${INSTALL_SCRIPT} \
		${WRKSRC}/cmd/gke-gcloud-auth-plugin/gke-gcloud-auth-plugin \
		${PREFIX}/bin/

.include <bsd.port.mk>
