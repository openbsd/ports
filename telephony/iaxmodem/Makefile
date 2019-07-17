# $OpenBSD: Makefile,v 1.10 2019/07/17 14:39:43 danj Exp $

COMMENT=	a software fax modem that uses an IAX channel

DISTNAME=	iaxmodem-1.3.0
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxmodem/}
REVISION=	0

HOMEPAGE=	http://iaxmodem.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m tiff util

LIB_DEPENDS=	graphics/tiff

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=	-I${LOCALBASE}/include

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iaxmodem
	${INSTALL_PROGRAM} ${WRKSRC}/iaxmodem ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/iaxmodem-cfg.ttyIAX \
	    ${PREFIX}/share/examples/iaxmodem/iaxmodem-cfg.ttyIAX
	${INSTALL_DATA} ${WRKSRC}/config.ttyIAX \
	    ${PREFIX}/share/examples/iaxmodem/hylafax-cfg.ttyIAX
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA} ${WRKSRC}/iaxmodem.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
