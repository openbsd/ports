# $OpenBSD: Makefile,v 1.1.1.1 2001/01/30 15:22:53 avsm Exp $

DISTNAME=	tcpstat-1.4
CATEGORIES=	net
NEED_VERSION=	1.351
MASTER_SITES=	http://www.frenchfries.net/paul/tcpstat/

HOMEPAGE=	http://www.frenchfries.net/paul/tcpstat/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tcpstat
	${INSTALL_DATA} ${WRKSRC}/doc/Tips_and_Tricks.txt \
		${PREFIX}/share/examples/tcpstat

.include <bsd.port.mk>
