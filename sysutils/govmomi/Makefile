# $OpenBSD: Makefile,v 1.23 2021/11/27 09:47:15 ajacoutot Exp $

COMMENT-main=		vSphere CLI built on top of govmomi
COMMENT-vcsim=		vCenter and ESXi API based simulator

MODGO_MODNAME=		github.com/vmware/govmomi
MODGO_VERSION=		v0.27.2
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
	cp ${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}/toolbox/hgfs/hgfs_{darwin,openbsd}.go
	cp ${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}/toolbox/toolbox_{darwin,openbsd}.go

do-build:
.for _d in govc vcsim
	cd ${WRKSRC}/${_d} && ${MODGO_BUILD_CMD}
.endfor

MODGO_MODULES =	\
	github.com/a8m/tree		 v0.0.0-20210115125333-10a5fd5b637d \
	github.com/davecgh/go-xdr	 v0.0.0-20161123171359-e6a2ba005892 \
	github.com/dougm/pretty		 v0.0.0-20171025230240-2ee9d7453c02 \
	github.com/google/uuid		 v1.2.0 \
	github.com/kr/pretty		 v0.1.0 \
	github.com/kr/pty		 v1.1.1 \
	github.com/kr/text		 v0.1.0 \
	github.com/rasky/go-xdr		 v0.0.0-20170217172119-4930550ba2e2 \
	github.com/vmware/vmw-guestinfo	 v0.0.0-20170707015358-25eff159a728

.include <bsd.port.mk>
