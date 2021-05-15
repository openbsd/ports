# $OpenBSD: Makefile,v 1.50 2021/05/15 16:51:10 ajacoutot Exp $

COMMENT=		manage Exoscale infrastructure from the command-line

GH_TAGNAME=		v1.29.0
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
