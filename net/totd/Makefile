# $OpenBSD: Makefile,v 1.2 2000/01/21 10:19:32 itojun Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $
#

DISTNAME=	totd-1.1p2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.vermicelli.cs.uit.no/ipv6/software.html

WRKSRC=         ${WRKDIR}/totd-1.1p2

GNU_CONFIGURE=	YES

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/totd.conf.sample ${PREFIX}/etc/totd.conf.sample

.include <bsd.port.mk>
