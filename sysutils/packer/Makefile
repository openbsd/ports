# $OpenBSD: Makefile,v 1.30 2020/03/27 07:39:24 ajacoutot Exp $

# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.5.5
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
