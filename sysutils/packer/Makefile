# $OpenBSD: Makefile,v 1.10 2017/04/05 14:39:39 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v1.0.0
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
