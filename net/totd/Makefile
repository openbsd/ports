# $OpenBSD: Makefile,v 1.19 2007/09/15 22:36:59 merdely Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $

COMMENT=	DNS proxy that supports IPv6 <==> IPv4 record translation

DISTNAME=	totd-1.3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

MAINTAINER=	Jun-ichiro itojun Hagino <itojun@itojun.org>
HOMEPAGE=	http://www.vermicelli.pasta.cs.uit.no/ipv6/software.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

MAKE_FLAGS=		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
