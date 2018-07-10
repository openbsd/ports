# $OpenBSD: Makefile,v 1.15 2018/07/10 15:44:04 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.2.4
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
