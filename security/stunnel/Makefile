# $OpenBSD: Makefile,v 1.4 2000/06/20 19:36:24 jakob Exp $

DISTNAME=	stunnel-3.8
CATEGORIES=	security
NEED_VERSION=	1.302

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://mike.daewoo.com.pl/computer/stunnel/

MASTER_SITES=	http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

CONFIGURE_STYLE=	gnu
ALL_TARGET=		stunnel

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/stunnel.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
