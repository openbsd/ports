# $OpenBSD: Makefile,v 1.1.1.1 2016/04/28 10:09:22 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.10.0
GH_ACCOUNT=		mitchellh
GH_PROJECT=		packer

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

# Redefine ${MODGO_CMD} to include GO15VENDOREXPERIMENT
MODGO_CMD=		unset GOPATH; \
				export GO15VENDOREXPERIMENT=1; \
				export GOPATH="${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}"; \
				go

.include <bsd.port.mk>
