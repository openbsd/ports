# $OpenBSD: Makefile,v 1.43 2021/01/22 07:39:07 ajacoutot Exp $

COMMENT=		manage Exoscale infrastructure from the command-line

GH_TAGNAME=		v1.23.0
GH_ACCOUNT=		exoscale
GH_PROJECT=		cli
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME:C/^v//}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

# see ${WRKSRC}/Dockerfile
MODGO_LDFLAGS +=	-X main.version=${GH_TAGNAME:C/^v//}
MODGO_LDFLAGS +=	-X main.commit=

post-install:
	mv ${PREFIX}/bin/{cli,exo}

.include <bsd.port.mk>
