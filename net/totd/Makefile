# $OpenBSD: Makefile,v 1.3 2000/02/11 00:37:34 espie Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $
#

DISTNAME=	totd-1.1p2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/
NEED_VERSION=	1.191

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.vermicelli.cs.uit.no/ipv6/software.html

WRKDIST=         ${WRKDIR}/totd-1.1p2

GNU_CONFIGURE=	YES

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/totd.conf.sample ${PREFIX}/etc/totd.conf.sample

.include <bsd.port.mk>
