# $OpenBSD: Makefile,v 1.13 2007/04/13 20:40:51 sturm Exp $

COMMENT-main=	"ODBC 3.x driver manager"
COMMENT-admin=	"ODBC 3.x driver manager admin application"

V=		3.52.4
DISTNAME=	libiodbc-${V}
PKGNAME=	iodbc-${V}p0
PKGNAME-main=	iodbc-${V}p0
PKGNAME-admin=	iodbc-admin-${V}p0
CATEGORIES=	databases
SHARED_LIBS +=	iodbcinst            3.15     # .3.15
SHARED_LIBS +=	iodbc                3.15     # .3.15
SHARED_LIBS +=  iodbcadm             3.15     # .3.15
SHARED_LIBS +=  drvproxy             3.15     # .3.15

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
CONFIGURE_ARGS= --with-iodbc-inidir="${SYSCONFDIR}/iodbc" \
		--disable-libodbc

MULTI_PACKAGES=		-main -admin

WANTLIB-main=		c pthread

LIB_DEPENDS-admin=	gtk,gdk::x11/gtk+ \
			iodbc,iodbcinst::databases/iodbc,-main
WANTLIB-admin=		X11 Xau Xdmcp Xext Xi c glib gmodule iconv intl m \
			pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iodbc
	${INSTALL_DATA} ${WRKSRC}/etc/*.ini.sample \
		${PREFIX}/share/examples/iodbc

.include <bsd.port.mk>
