# $OpenBSD: Makefile,v 1.3 2016/05/11 17:03:21 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.10.0
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
