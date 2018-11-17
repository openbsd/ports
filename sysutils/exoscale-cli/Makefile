# $OpenBSD: Makefile,v 1.6 2018/11/17 09:36:57 ajacoutot Exp $

COMMENT=		manage Exoscale infrastructure from the command-line

GH_TAGNAME=		v1.0.4
GH_ACCOUNT=		exoscale
GH_PROJECT=		cli
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME:C/^v//}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

# see ${WRKSRC}/Dockerfile
MODGO_LDFLAGS +=	-X main.version=${GH_TAGNAME:C/^v//}
MODGO_LDFLAGS +=	-X main.commit=

post-install:
	mv ${PREFIX}/bin/{cli,exo}

.include <bsd.port.mk>
