# $OpenBSD: Makefile,v 1.34 2015/02/16 22:57:11 naddy Exp $

COMMENT=	command line arbitrary packet builder

DISTNAME=	nemesis-1.4
REVISION=	1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nemesis/}

HOMEPAGE=	http://nemesis.sourceforge.net/

LIB_DEPENDS=	net/libnet/1.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m lib/libnet-1.0/net=0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --with-libnet_includes=${LOCALBASE}/include/libnet-1.0 \
		 --with-libnet_libraries=${LOCALBASE}/lib/libnet-1.0

.include <bsd.port.mk>
