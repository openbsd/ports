# $OpenBSD: Makefile,v 1.2 2001/06/03 05:19:01 brad Exp $

COMMENT=		"python interface to MySQL"

VERSION=		0.3.5
DISTNAME=		MySQL-python-${VERSION}
PKGNAME=		py-mysql-${VERSION}
CATEGORIES=		databases
NEED_VERSION=		1.402
MASTER_SITES=		http://dustman.net/andy/python/MySQLdb/${VERSION}/
HOMEPAGE=		http://dustman.net/andy/python/MySQLdb/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

BUILD_DEPENDS=		python2.0::lang/python
LIB_DEPENDS=		mysqlclient.10:mysql-client-3.23.*:databases/mysql

DOC_DIR=		${PREFIX}/share/examples/MySQL-python
DOC_SCRIPTS=		dbtrainer0 dbtrainer1 dbtrainer2 dbtrainer3 \
			dbtrainer4
DOC_FILES=		README test.sql

do-build:
	@cd ${WRKSRC}; python ./setup.py build --build-base="${WRKSRC}"

do-install:
	cd ${WRKSRC}; python ./setup.py install --prefix="${PREFIX}"
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in ${DOC_SCRIPTS}
	${INSTALL_SCRIPT} ${WRKBUILD}/examples/$i ${DOC_DIR}/$i
.endfor
.for i in ${DOC_FILES}
	${INSTALL_DATA} ${WRKBUILD}/examples/$i ${DOC_DIR}/$i
.endfor

.include <bsd.port.mk>
