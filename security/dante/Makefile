# $OpenBSD: Makefile,v 1.26 2004/12/27 13:28:33 alek Exp $

COMMENT=	"SOCKS client and server"

DISTNAME=	dante-1.1.14
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

HOMEPAGE=	http://www.inet.no/dante/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c wrap

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

MODGNU_CONFIG_GUESS_DIRS+= ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/SOCKS4.* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/rfc* ${PREFIX}/share/doc/dante
	${INSTALL_DATA} ${WRKSRC}/doc/faq.ps ${PREFIX}/share/doc/dante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dante
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/dante

.include <bsd.port.mk>
