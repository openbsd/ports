# $OpenBSD: Makefile.inc,v 1.6 2019/12/05 19:40:59 sthen Exp $

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

# avoid running other jobs simultaneously, several of these use a lot
# of RAM and fail fairly frequently
.if ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES=		lonesome
.endif
