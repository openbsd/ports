# $OpenBSD: Makefile,v 1.28 2007/05/27 14:45:33 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python interface to MySQL"

VERSION=	1.2.2
DISTNAME=	MySQL-python-${VERSION}
PKGNAME=	py-mysql-${VERSION}
CATEGORIES=	databases lang/python

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
DOC_DIR=	  ${PREFIX}/share/doc/MySQL-python

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.txt ${DOC_DIR}

.include <bsd.port.mk>
