# $OpenBSD: Makefile,v 1.13 2017/12/11 19:27:53 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.1.3
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
