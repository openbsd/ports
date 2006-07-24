# $OpenBSD: Makefile,v 1.5 2006/07/24 09:18:13 bernd Exp $

COMMENT=		"GUI client for MySQL"

VERSION=		0.9.4
DISTNAME=		mysqlcc-${VERSION}-src
PKGNAME=		mysqlcc-${VERSION}p2
CATEGORIES=		databases

HOMEPAGE=		http://mysql.com/products/mysqlcc/index.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread stdc++ z

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MySQLCC/ \
			ftp://sunsite.dk/mirrors/mysql/Downloads/MySQLCC/ \
			ftp://gd.tuwien.ac.at/db/mysql/Downloads/MySQLCC/ \
			ftp://mysql.secsup.org/pub/software/mysql/Downloads/MySQLCC

MODQT_MT=		Yes
MODULES=		x11/qt3
LIB_DEPENDS=		lib/mysql/mysqlclient.10::databases/mysql

MAKE_ENV=		LOCALBASE=${LOCALBASE} HACK_CFLAGS="${CFLAGS}"
MAKE_FLAGS=   		CC=${CC} CXX=${CXX} LINK=${CXX}

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS} \
			--with-mysql-lib=${LOCALBASE}/lib/mysql \
			--with-mysql-include=${LOCALBASE}/include/mysql
CONFIGURE_ENV=		QTDIR=${LOCALBASE} \
			FILESDIR=${FILESDIR} \
			LOCALBASE=${LOCALBASE}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mysqlcc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mysqlcc/translations
	${INSTALL_DATA} ${WRKSRC}/warning.wav ${WRKSRC}/error.wav ${WRKSRC}/syntax.txt ${PREFIX}/share/mysqlcc
	${INSTALL_DATA} ${WRKSRC}/translations/* ${PREFIX}/share/mysqlcc/translations

.include <bsd.port.mk>
