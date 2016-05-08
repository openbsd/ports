# $OpenBSD: Makefile,v 1.2 2016/05/08 12:29:17 czarkoff Exp $

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

MODGO_ENV=		GO15VENDOREXPERIMENT=1

.include <bsd.port.mk>
