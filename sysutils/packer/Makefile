# $OpenBSD: Makefile,v 1.9 2017/03/03 09:24:31 ajacoutot Exp $

COMMENT=		tool for building machine images

GH_TAGNAME=		v0.12.3
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
