# $OpenBSD: Makefile,v 1.1.1.1 1999/12/05 18:25:54 jakob Exp $

DISTNAME=	stunnel-3.4a
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

GNU_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/stunnel.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
