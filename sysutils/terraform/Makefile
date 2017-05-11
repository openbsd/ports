# $OpenBSD: Makefile,v 1.26 2017/05/11 21:10:22 ajacoutot Exp $

COMMENT=		tool for building, changing, and versioning infrastructure

GH_TAGNAME=		v0.9.5
GH_ACCOUNT=		hashicorp
GH_PROJECT=		terraform

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
