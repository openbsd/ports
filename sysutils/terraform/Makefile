# $OpenBSD: Makefile,v 1.44 2020/10/03 11:21:17 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.13.4
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
