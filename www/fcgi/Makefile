# $OpenBSD: Makefile,v 1.1.1.1 2004/02/11 20:13:35 sturm Exp $

COMMENT=		"FastCGI Development Kit"

DISTNAME=		fcgi-2.4.0
CATEGORIES=		www

HOMEPAGE=		http://www.fastcgi.com/

MAINTAINER=		Pedro Martelletto <pbastos@rdc.puc-rio.br>

# BSD-like
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/*.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fcgi
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm* ${WRKSRC}/doc/*.gif \
	${PREFIX}/share/doc/fcgi

.include <bsd.port.mk>
