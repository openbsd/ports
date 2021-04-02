# $OpenBSD: Makefile,v 1.41 2021/04/02 08:58:17 ajacoutot Exp $

# [...]/network/mgmt/2018-01-01/network/expressroutecircuitpeerings.go:53:159:
# constant 4294967295 overflows int
ONLY_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.7.1
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
