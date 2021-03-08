# $OpenBSD: Makefile,v 1.40 2021/03/08 13:59:28 sthen Exp $

# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.7.0
GH_ACCOUNT=		hashicorp
GH_PROJECT=		packer
REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
