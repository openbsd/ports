# $OpenBSD: Makefile,v 1.8 2017/09/07 12:34:38 ajacoutot Exp $

COMMENT=		easy-to-use CLI to manage AWS

GH_TAGNAME=		v0.1.3
GH_ACCOUNT=		wallix
GH_PROJECT=		awless

CATEGORIES=		sysutils net

HOMEPAGE=		http://awless.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include <bsd.port.mk>
