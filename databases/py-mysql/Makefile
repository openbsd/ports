# $OpenBSD: Makefile,v 1.25 2005/11/17 19:07:12 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python interface to MySQL"

VERSION=	1.2.0
DISTNAME=	MySQL-python-${VERSION}
PKGNAME=	py-mysql-${VERSION}p0
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mysql-python/}

HOMEPAGE=	http://sourceforge.net/projects/mysql-python/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

LIB_DEPENDS=	lib/mysql/mysqlclient_r.14::databases/mysql
WANTLIB=	crypto m pthread ssl z

NO_REGRESS=	Yes

DOC_DIR=	${PREFIX}/share/doc/MySQL-python

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOC_DIR}

.include <bsd.port.mk>
