# $OpenBSD: Makefile,v 1.1.1.1 2000/11/22 17:32:18 dugsong Exp $

PKGNAME=	iodbc-2.50.3

DISTNAME=	libiodbc-2.50.3

CATEGORIES=	databases

MASTER_SITES=	http://www.iodbc.org/dist/

MAINTAINER=	Dug Song <dugsong@monkey.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-iodbc-inidir=/etc

USE_LIBTOOL=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/odbc.ini.sample \
		${PREFIX}/share/examples/iodbc/odbc.ini

.include <bsd.port.mk>
