# $OpenBSD: Makefile,v 1.11 2000/10/22 14:03:44 espie Exp $

DISTNAME=	fragrouter-1.6

CATEGORIES=	security

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

MAINTAINER=	Dug Song <dugsong@monkey.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
