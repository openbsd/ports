# $OpenBSD: Makefile,v 1.2 2010/07/27 09:27:24 dcoppa Exp $

COMMENT=	a software fax modem that uses an IAX channel

DISTNAME=	iaxmodem-1.1.0
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxmodem/}

HOMEPAGE=	http://iaxmodem.sourceforge.net/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m tiff util

LIB_DEPENDS=	::graphics/tiff

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=	-I${LOCALBASE}/include

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
