# $OpenBSD: Makefile,v 1.4 2002/12/29 19:37:52 fgsch Exp $

COMMENT=	"ODBC 2.x driver manager"

DISTNAME=	libiodbc-2.50.3
PKGNAME=	iodbc-2.50.3
CATEGORIES=	databases
MASTER_SITES=	http://www.iodbc.org/dist/

HOMEPAGE=	http://www.iodbc.org/

MAINTAINER=	Dug Song <dugsong@monkey.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-iodbc-inidir="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/iodbc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/odbc.ini.sample \
		${PREFIX}/share/examples/iodbc/odbc.ini

.include <bsd.port.mk>
