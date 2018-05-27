# $OpenBSD: Makefile.inc,v 1.3 2018/05/27 10:56:33 espie Exp $

DIST_SUBDIR=		terraform

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.terraform.io/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.if defined(PROVIDER)
COMMENT ?=		Terraform ${PROVIDER} provider
GH_ACCOUNT ?=		terraform-providers
GH_PROJECT ?=		terraform-provider-${PROVIDER}
PKGDIR ?=		${.CURDIR}/../pkg
RUN_DEPENDS +=		sysutils/terraform/terraform
SUBST_VARS +=		PROVIDER
.endif
