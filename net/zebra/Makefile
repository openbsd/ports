# $OpenBSD: Makefile,v 1.6 2000/04/09 17:37:41 espie Exp $
# KAME Id: Makefile,v 1.5 1999/09/13 16:27:41 itojun Exp

DISTNAME=	zebra-0.85
CATEGORIES=	net
FAKE=No
MASTER_SITES=	ftp://ftp.zebra.org/pub/zebra/
# you might need debugging, it's a developer release !
#CFLAGS+=	-g

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.zebra.org/

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes

.include <bsd.port.mk>

# it looks @cwd has no effect at this moment.  we need to avoid using
# path outside of ${PREFIX}.  it should be "/etc/zebra" instead.
CONFIGURE_ARGS+=--sysconfdir=${PREFIX}/etc/zebra
