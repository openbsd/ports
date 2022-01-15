# $OpenBSD: Makefile,v 1.87 2022/01/15 10:41:37 ajacoutot Exp $

BROKEN-aarch64=	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11
BROKEN-armv7=	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11

COMMENT=	thin wrapper for Terraform that provides extra tools

MODGO_MODNAME=	github.com/gruntwork-io/terragrunt
MODGO_VERSION=	v0.35.20
DISTNAME=	terragrunt-${MODGO_VERSION}

WRKDIST=	${WRKDIR}/github.com/gruntwork-io/terragrunt@${MODGO_VERSION}

CATEGORIES=	sysutils net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

MODGO_LDFLAGS=	-X main.VERSION=${MODGO_VERSION}

RUN_DEPENDS=	sysutils/terraform

.include "modules.inc"

.include <bsd.port.mk>
