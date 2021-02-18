# $OpenBSD: Makefile,v 1.39 2021/02/18 06:56:58 ajacoutot Exp $

# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.7.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		packer

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
