# $OpenBSD: Makefile,v 1.1.1.1 1999/04/23 04:13:59 todd Exp $

DISTNAME=	smurflog-2.1
CATEGORIES=	net security
MASTER_SITES=	http://www.nectar.com/distfiles/
#		http://www.sy.net/security/ \
#		http://www.bitchx.com/~humble/files/

MAINTAINER=	todd@OpenBSD.ORG

GNU_CONFIGURE=	YES

do-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/README.smurflog
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
