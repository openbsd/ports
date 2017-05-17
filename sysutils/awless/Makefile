# $OpenBSD: Makefile,v 1.2 2017/05/17 06:10:44 ajacoutot Exp $

COMMENT=		easy-to-use CLI to manage AWS

GH_TAGNAME=		v0.0.23
GH_ACCOUNT=		wallix
GH_PROJECT=		awless
REVISION=		0

CATEGORIES=		sysutils net

HOMEPAGE=		http://awless.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
