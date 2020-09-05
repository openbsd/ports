# $OpenBSD: Makefile,v 1.42 2020/09/05 10:31:58 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.13.2
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
