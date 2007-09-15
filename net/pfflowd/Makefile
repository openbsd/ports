# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:58 merdely Exp $

COMMENT=	PF to NetFlow converter

DISTNAME=	pfflowd-0.7
CATEGORIES=	net
MASTER_SITES=	http://www.mindrot.org/files/pfflowd/

HOMEPAGE=	http://www.mindrot.org/pfflowd.html

MAINTAINER=	Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap util 

NO_REGRESS=		Yes
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfflowd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pfflowd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
