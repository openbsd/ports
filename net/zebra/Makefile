# $OpenBSD: Makefile,v 1.3 2000/01/17 05:25:37 itojun Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

DISTNAME=	zebra-0.84a
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/
# you might need debugging, it's a developer release !
#CFLAGS+=	-g

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.zebra.org/

GNU_CONFIGURE=	yes

.include <bsd.port.mk>

# it looks @cwd has no effect at this moment.  we need to avoid using
# path outside of ${PREFIX}.  it should be "/etc/zebra" instead.
CONFIGURE_ARGS+=--sysconfdir=${PREFIX}/etc/zebra
