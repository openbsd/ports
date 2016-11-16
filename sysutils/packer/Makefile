# $OpenBSD: Makefile,v 1.6 2016/11/16 19:09:33 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.12.0
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
