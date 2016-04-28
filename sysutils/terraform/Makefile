# $OpenBSD: Makefile,v 1.1.1.1 2016/04/28 10:10:14 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.6.15
GH_ACCOUNT=		hashicorp
GH_PROJECT=		terraform

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes


MODULES=		lang/go

# Redefine ${MODGO_CMD} to include GO15VENDOREXPERIMENT
MODGO_CMD=		unset GOPATH; \
				export GO15VENDOREXPERIMENT=1; \
				export GOPATH="${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}"; \
				go

.include <bsd.port.mk>
