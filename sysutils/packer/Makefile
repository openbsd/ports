# $OpenBSD: Makefile,v 1.14 2018/04/14 22:53:54 sthen Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.1.3
GH_ACCOUNT=		hashicorp
GH_PROJECT=		packer
REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
