# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:54 espie Exp $

COMMENT=	PF to NetFlow converter

BROKEN=		needs updating for pfsync changes, try pflow(4) instead

DISTNAME=	pfflowd-0.7
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.mindrot.org/files/pfflowd/

HOMEPAGE=	http://www.mindrot.org/pfflowd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap util 

NO_TEST=		Yes
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
USE_GROFF =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfflowd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pfflowd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
