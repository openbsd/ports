# $OpenBSD: Makefile,v 1.2 2000/03/05 22:55:44 jakob Exp $

DISTNAME=	stunnel-3.8
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

HOMEPAGE=	http://mike.daewoo.com.pl/computer/stunnel/

MASTER_SITES=	http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

GNU_CONFIGURE=	yes

ALL_TARGET=	stunnel

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/stunnel.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
