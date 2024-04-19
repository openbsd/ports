COMMENT-main=		vSphere CLI built on top of govmomi
COMMENT-vcsim=		vCenter and ESXi API based simulator

MODGO_MODNAME=		github.com/vmware/govmomi
MODGO_VERSION=		v0.37.1
DISTNAME=		govmomi-${MODGO_VERSION}

WRKDIST=		${WRKDIR}/github.com/vmware/govmomi@${MODGO_VERSION}

PKGNAME-main=		govc-${MODGO_VERSION:C/^v//}
PKGNAME-vcsim=		vcsim-${MODGO_VERSION:C/^v//}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# Apache-2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

MULTI_PACKAGES=		-main -vcsim

pre-patch:
	cp ${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}/toolbox/toolbox_{darwin,openbsd}.go

do-build:
.for _d in govc vcsim
	cd ${WRKSRC}/${_d} && ${MODGO_BUILD_CMD}
.endfor

.include "modules.inc"

.include <bsd.port.mk>
