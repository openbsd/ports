# $OpenBSD: Makefile,v 1.7 2000/04/24 01:44:58 kevlo Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

DISTNAME=	zebra-0.85
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/
# you might need debugging, it's a developer release !
#CFLAGS+=	-g

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.zebra.org/

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

.include <bsd.port.mk>

# it looks @cwd has no effect at this moment.  we need to avoid using
# path outside of ${PREFIX}.  it should be "/lib/zebra" instead.
CONFIGURE_ARGS+=--sysconfdir=${PREFIX}/lib/zebra
