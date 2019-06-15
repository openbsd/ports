# $OpenBSD: Makefile.inc,v 1.5 2019/06/15 09:19:04 ajacoutot Exp $

DIST_SUBDIR=		terraform

CATEGORIES=		sysutils net

HOMEPAGE ?=		https://www.terraform.io/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

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
