# $OpenBSD: Makefile,v 1.1.1.1 2017/11/28 08:42:19 ajacoutot Exp $

COMMENT-main=		vSphere CLI built on top of govmomi
COMMENT-vcsim=		vCenter and ESXi API based simulator

GH_TAGNAME=		v0.16.0
GH_ACCOUNT=		vmware
GH_PROJECT=		govmomi

PKGNAME-main=		govc-${GH_TAGNAME:C/^v//}
PKGNAME-vcsim=		vcsim-${GH_TAGNAME:C/^v//}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

MULTI_PACKAGES=		-main -vcsim

post-build:
.for _d in govc vcsim
	cd ${WRKSRC}/$${_d} && ${MODGO_BUILD_CMD} ${ALL_TARGET}/${_d}
.endfor

.include <bsd.port.mk>
