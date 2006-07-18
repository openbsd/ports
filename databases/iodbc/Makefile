# $OpenBSD: Makefile,v 1.10 2006/07/18 19:44:27 alek Exp $

COMMENT=	"ODBC 3.x driver manager"

DISTNAME=	libiodbc-3.52.4
PKGNAME=	${DISTNAME:S/lib//}
CATEGORIES=	databases
SHARED_LIBS=	iodbc		3.15 \
		iodbcinst	3.15

HOMEPAGE=	http://www.iodbc.org/

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c pthread

MASTER_SITES=	${HOMEPAGE}downloads/iODBC/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --with-iodbc-inidir="${SYSCONFDIR}/iodbc" \
		--disable-gui \
		--disable-libodbc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/etc/*.ini.sample \
		${PREFIX}/share/examples/iodbc

.include <bsd.port.mk>
