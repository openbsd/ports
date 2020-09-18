# $OpenBSD: Makefile,v 1.43 2020/09/18 13:27:15 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.13.3
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
