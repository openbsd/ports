# $OpenBSD: Makefile,v 1.5 2000/04/09 17:37:37 espie Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $
#

DISTNAME=	totd-1.1p2
CATEGORIES=	net
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.vermicelli.cs.uit.no/ipv6/software.html

WRKDIST=         ${WRKDIR}/totd-1.1p2

GNU_CONFIGURE=	YES

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/totd.conf.sample ${PREFIX}/etc/totd.conf.sample

.include <bsd.port.mk>
