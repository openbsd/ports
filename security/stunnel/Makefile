# $OpenBSD: Makefile,v 1.11 2001/03/24 19:55:30 jakob Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-3.14
CATEGORIES=	security
NEED_VERSION=	1.363

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.stunnel.org/

MASTER_SITES=	http://www.stunnel.org/download/stunnel/src/ \
		ftp://stunnel.mirt.net/stunnel/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

BUILD_DEPENDS=  sdf::textproc/p5-sdf

CONFIGURE_STYLE=	gnu
ALL_TARGET=		stunnel stunnel.8

post-configure:
	rm ${WRKSRC}/stunnel.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/stunnel.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
