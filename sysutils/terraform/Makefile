# $OpenBSD: Makefile,v 1.40 2020/08/13 14:36:20 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.13.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		terraform

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
