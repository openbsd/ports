# $OpenBSD: Makefile,v 1.27 2006/08/01 22:19:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python interface to MySQL"

VERSION=	1.2.0
DISTNAME=	MySQL-python-${VERSION}
PKGNAME=	py-mysql-${VERSION}p1
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mysql-python/}

HOMEPAGE=	http://sourceforge.net/projects/mysql-python/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

LIB_DEPENDS=	lib/mysql/mysqlclient_r.>=14::databases/mysql
WANTLIB=	crypto m pthread ssl z

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/MySQL-python

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOC_DIR}

.include <bsd.port.mk>
