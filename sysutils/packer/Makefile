# $OpenBSD: Makefile,v 1.50 2022/02/03 10:34:13 ajacoutot Exp $

# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

MODGO_MODNAME=		github.com/hashicorp/packer
MODGO_VERSION=		v1.7.10
DISTNAME=		packer-${MODGO_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

.include <bsd.port.mk>
