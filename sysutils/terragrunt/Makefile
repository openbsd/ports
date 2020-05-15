# $OpenBSD: Makefile,v 1.19 2020/05/15 17:22:28 ajacoutot Exp $

COMMENT=	thin wrapper for Terraform that provides extra tools

GH_TAGNAME=	v0.23.18
GH_ACCOUNT=	gruntwork-io
GH_PROJECT=	terragrunt

CATEGORIES=	sysutils net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X main.VERSION=${GH_TAGNAME}

RUN_DEPENDS=	sysutils/terraform

MASTER_SITES=	https://distfiles.bsdfrog.org/

.include <bsd.port.mk>
