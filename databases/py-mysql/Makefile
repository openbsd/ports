# $OpenBSD: Makefile,v 1.35 2010/08/30 20:53:57 fgsch Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to MySQL

VERSION=	1.2.2
DISTNAME=	MySQL-python-${VERSION}
PKGNAME=	py-mysql-${VERSION}
REVISION =	4
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mysql-python/}

HOMEPAGE=	http://mysql-python.sourceforge.net/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=	crypto m pthread ssl z

MODULES=	lang/python
LIB_DEPENDS=	lib/mysql/mysqlclient_r.>=14::databases/mysql

NO_REGRESS=	Yes

MODPY_SETUPTOOLS= Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mysql
	${INSTALL_DATA} ${WRKBUILD}/doc/*.txt ${PREFIX}/share/doc/py-mysql/

.include <bsd.port.mk>
