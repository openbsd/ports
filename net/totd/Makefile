# $OpenBSD: Makefile,v 1.15 2002/01/28 01:41:52 jsyn Exp $
# $NetBSD: Makefile,v 1.3 2000/01/21 10:01:23 itojun Exp $

COMMENT=	"DNS proxy that supports IPv6 <==> IPv4 record translation"

DISTNAME=	totd-1.2
CATEGORIES=	net
NEED_VERSION=	1.504
MASTER_SITES=	ftp://ftp.pasta.cs.uit.no/pub/Vermicelli/

MAINTAINER=	Jun-ichiro itojun Hagino <itojun@itojun.org>
HOMEPAGE=	http://www.vermicelli.pasta.cs.uit.no/ipv6/software.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

MAKE_FLAGS=		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/totd
	${INSTALL_DATA} ${FILESDIR}/totd.conf.sample ${PREFIX}/share/totd

.include <bsd.port.mk>
