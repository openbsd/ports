# $OpenBSD: Makefile,v 1.13 2001/05/06 03:45:47 lebel Exp $

COMMENT=	"tool for testing network IDS implementations"

DISTNAME=	fragrouter-1.6

CATEGORIES=	security
NEED_VERSION=	1.402

MASTER_SITES=	http://www.anzen.com/research/nidsbench/

MAINTAINER=	Dug Song <dugsong@monkey.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
