# $OpenBSD: Makefile,v 1.17 2002/09/06 04:27:43 jsyn Exp $

COMMENT=	"tool for testing network IDS implementations"

DISTNAME=	fragrouter-1.6

CATEGORIES=	security
NEED_VERSION=	1.402

MASTER_SITES=	http://monkey.org/~dugsong/

MAINTAINER=	Dug Song <dugsong@monkey.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/libpcap-0.4 ${WRKSRC}/Libnet-0.99b

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fragrouter ${PREFIX}/sbin
	${INSTALL_MAN}	${WRKSRC}/fragrouter.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
