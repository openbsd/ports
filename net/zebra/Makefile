# $OpenBSD: Makefile,v 1.1.1.1 2000/01/08 14:01:53 itojun Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

DISTNAME=	zebra-0.83
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/
# you might need debugging, it's a developer release !
#CFLAGS+=	-g

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.zebra.org/

BROKEN=		"cannot recognize libinet6.a"

GNU_CONFIGURE=	yes
#CONFIGURE_ARGS+=--sysconfdir=${PREFIX}/etc/zebra
#CONFIGURE_ARGS+=--disable-ospf6d

.include <bsd.port.mk>
