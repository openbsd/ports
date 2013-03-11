# $OpenBSD: Makefile,v 1.38 2013/03/11 11:41:24 espie Exp $

COMMENT=	SOCKS client and server

DISTNAME=	dante-1.1.19
REVISION =	0
CATEGORIES=	security

SHARED_LIBS=	dsocks	1.1 \
		socks	1.1
MODGNU_SHARED_LIBS=dsocks	'-all-dynamic' \
		socks		''

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

HOMEPAGE=	http://www.inet.no/dante/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c wrap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

MODGNU_CONFIG_GUESS_DIRS+= ${WRKSRC}

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/SOCKS4.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/rfc* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/faq.ps ${PREFIX}/share/doc/dante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
