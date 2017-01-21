# $OpenBSD: Makefile,v 1.8 2017/01/21 04:10:44 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.12.2
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
