COMMENT=		kubectl authentication plugin for GKE

V=			28.2.0
PKGNAME=		gke-gcloud-auth-plugin-${V}

CATEGORIES=		sysutils net

HOMEPAGE=		https://github.com/kubernetes/cloud-provider-gcp

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

# ftp https://github.com/kubernetes/cloud-provider-gcp/archive/refs/tags/ccm/v${V}.tar.gz
# tar xzf v${V}.tar.gz
# cd cloud-provider-gcp-ccm-v${V} && go mod tidy && go mod vendor
# cd .. && mv cloud-provider-gcp-ccm-v${V} cloud-provider-gcp-ccm-vendored-v${V}
# tar czf cloud-provider-gcp-ccm-vendored-v${V}.tar.gz cloud-provider-gcp-ccm-vendored-v${V}
SITES=			https://distfiles.bsdfrog.org/
DISTNAME=		cloud-provider-gcp-ccm-vendored-v${V}

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
LDFLAGS +=		-X k8s.io/component-base/version.gitVersion=v1.28.2-alpha+66f44aab0946c059f047a52f694b980e7de3b557

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
