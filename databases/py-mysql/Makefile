# $OpenBSD: Makefile,v 1.6 2001/08/25 13:08:33 shell Exp $

COMMENT=		"python interface to MySQL"

VERSION=		0.9.0
DISTNAME=		MySQL-python-${VERSION}
PKGNAME=		py-mysql-${VERSION}
CATEGORIES=		databases
NEED_VERSION=		1.440

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	mysql-python

HOMEPAGE=		http://dustman.net/andy/python/MySQLdb/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=		mysqlclient.10:mysql-client-3.23.*:databases/mysql

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

DOC_DIR=	${PREFIX}/share/doc/MySQL-python

do-build:
	@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base="${WRKSRC}"

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix="${PREFIX}"
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_SCRIPT} ${WRKBUILD}/doc/*.html ${DOC_DIR}/


.include <bsd.port.mk>
