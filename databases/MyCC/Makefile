# $OpenBSD: Makefile,v 1.2 2002/04/11 08:15:39 wilfried Exp $

COMMENT=		"GUI client for MySQL"

VERSION=		0.8.2
DISTNAME=		mycc-${VERSION}-alpha-src
PKGNAME=		MyCC-${VERSION}
CATEGORIES=		databases
NEED_VERSION=		1.515

HOMEPAGE=		http://mysql.com/products/mycc/index.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MyCC/ \
			ftp://ftp.mysql.com/MyCC/

MODULES=		qt3
LIB_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

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

post-patch:
	@rm ${WRKSRC}/include/CSqlEditor/qrichtext_p.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/MyCC ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/MyCC/translations
	${INSTALL_DATA} ${WRKSRC}/warning.wav ${WRKSRC}/error.wav ${WRKSRC}/syntax.txt ${PREFIX}/share/MyCC
	${INSTALL_DATA} ${WRKSRC}/translations/* ${PREFIX}/share/MyCC/translations

.include <bsd.port.mk>
