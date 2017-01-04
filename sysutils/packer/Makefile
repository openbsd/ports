# $OpenBSD: Makefile,v 1.7 2017/01/04 08:18:27 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.12.1
GH_ACCOUNT=		mitchellh
GH_PROJECT=		packer

CATEGORIES=		sysutils

HOMEPAGE=		http://www.packer.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
