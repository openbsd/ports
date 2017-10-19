# $OpenBSD: Makefile,v 1.11 2017/10/19 10:23:45 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.1.1
GH_ACCOUNT=		hashicorp
GH_PROJECT=		packer

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
