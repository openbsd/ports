# $OpenBSD: Makefile,v 1.9 2000/06/11 01:15:51 fgsch Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $

DISTNAME=	totd-1.1p4
CATEGORIES=	net
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

MAINTAINER=	itojun@itojun.org
HOMEPAGE=	http://www.vermicelli.cs.uit.no/ipv6/software.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=         ${WRKDIR}/totd-1.1p4

CONFIGURE_STYLE=	gnu

pre-install:
	echo mierda
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
