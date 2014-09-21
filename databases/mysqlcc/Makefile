# $OpenBSD: Makefile,v 1.21 2014/09/21 17:32:41 brad Exp $

COMMENT=		GUI client for MySQL

VERSION=		1.0.2
DISTNAME=		mysqlcc-${VERSION}-src
PKGNAME=		mysqlcc-${VERSION}
CATEGORIES=		databases

HOMEPAGE=		http://mysqlcc.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext c m pthread stdc++ z
WANTLIB += lib/mysql/mysqlclient

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mysqlcc/}

MODULES=		x11/qt3
LIB_DEPENDS=		databases/mariadb

MAKE_ENV=		LOCALBASE=${LOCALBASE} HACK_CFLAGS="${CFLAGS}"
MAKE_FLAGS=   		CC=${CC} CXX=${CXX} LINK=${CXX}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS} \
			--with-mysql-lib=${LOCALBASE}/lib/mysql \
			--with-mysql-include=${LOCALBASE}/include/mysql
CONFIGURE_ENV=		QTDIR=${LOCALBASE} \
			FILESDIR=${FILESDIR} \
			LOCALBASE=${LOCALBASE}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mysqlcc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mysqlcc/translations
	${INSTALL_DATA} ${WRKSRC}/warning.wav ${WRKSRC}/error.wav ${WRKSRC}/syntax.txt ${PREFIX}/share/mysqlcc
	${INSTALL_DATA} ${WRKSRC}/translations/* ${PREFIX}/share/mysqlcc/translations

.include <bsd.port.mk>
