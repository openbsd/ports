# $OpenBSD: Makefile,v 1.12 2017/12/03 15:11:46 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.1.2
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
