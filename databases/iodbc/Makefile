# $OpenBSD: Makefile,v 1.8 2005/12/26 21:32:00 sturm Exp $

COMMENT=	"ODBC 2.x driver manager"

DISTNAME=	libiodbc-2.50.3
PKGNAME=	iodbc-2.50.3p0
CATEGORIES=	databases
SHARED_LIBS=	iodbc	2.50
MODGNU_SHARED_LIBS=iodbc ''
LIBiodbc_ALIAS=	realiodbc

HOMEPAGE=	http://www.iodbc.org/

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${HOMEPAGE}downloads/iODBC/

USE_LIBTOOL=	Yes

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
