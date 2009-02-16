# $OpenBSD: Makefile,v 1.10 2009/02/16 00:44:24 sthen Exp $

COMMENT=	PF to NetFlow converter

BROKEN=		needs updating for pfsync changes

DISTNAME=	pfflowd-0.7
PKGNAME=	${DISTNAME}p0
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
