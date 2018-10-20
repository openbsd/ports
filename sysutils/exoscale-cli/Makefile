# $OpenBSD: Makefile,v 1.3 2018/10/20 12:15:11 ajacoutot Exp $

COMMENT=		manage Exoscale infrastructure from the command-line

GH_TAGNAME=		v1.0.1
GH_ACCOUNT=		exoscale
GH_PROJECT=		cli
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME:C/^v//}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	mv ${PREFIX}/bin/{cli,exo}

.include <bsd.port.mk>
