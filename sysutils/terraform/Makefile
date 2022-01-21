# $OpenBSD: Makefile,v 1.77 2022/01/21 09:14:13 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

MODGO_MODNAME=		github.com/hashicorp/terraform
MODGO_VERSION=		v1.1.4
DISTNAME=		terraform-${MODGO_VERSION}

WRKDIST=		${WRKDIR}/github.com/hashicorp/terraform@${MODGO_VERSION}

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

.include <bsd.port.mk>
