# $OpenBSD: Makefile,v 1.35 2019/07/12 20:48:33 sthen Exp $

COMMENT=	command line arbitrary packet builder

DISTNAME=	nemesis-1.4
REVISION=	1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nemesis/}

HOMEPAGE=	http://nemesis.sourceforge.net/

LIB_DEPENDS=	net/libnet/1.0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m lib/libnet-1.0/net=0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --with-libnet_includes=${LOCALBASE}/include/libnet-1.0 \
		 --with-libnet_libraries=${LOCALBASE}/lib/libnet-1.0

.include <bsd.port.mk>
