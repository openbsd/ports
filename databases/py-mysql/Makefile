# $OpenBSD: Makefile,v 1.24 2005/09/23 19:36:02 pvalchev Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python interface to MySQL"

VERSION=	1.2.0
DISTNAME=	MySQL-python-${VERSION}
PKGNAME=	py-mysql-${VERSION}
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mysql-python/}

HOMEPAGE=	http://sourceforge.net/projects/mysql-python/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c z

MODULES=	lang/python

LIB_DEPENDS=	lib/mysql/mysqlclient.10::databases/mysql

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/MySQL-python

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOC_DIR}

.include <bsd.port.mk>
