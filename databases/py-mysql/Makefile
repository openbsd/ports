# $OpenBSD: Makefile,v 1.13 2002/03/21 20:46:24 espie Exp $

COMMENT=		"python interface to MySQL"

VERSION=		0.9.1
DISTNAME=		MySQL-python-${VERSION}
PKGNAME=		py-mysql-${VERSION}
CATEGORIES=		databases
NEED_VERSION=		1.515

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	mysql-python

HOMEPAGE=		http://dustman.net/andy/python/MySQLdb/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

PYTHON_VER=	2.1

RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

DOC_DIR=	${PREFIX}/share/doc/MySQL-python

do-configure:
	@perl -i -pe 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

do-build:
	${PY_CMD} build --build-base="${WRKSRC}"

do-install:
	${PY_CMD} install --prefix="${PREFIX}"
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_SCRIPT} ${WRKBUILD}/doc/*.html ${DOC_DIR}/


.include <bsd.port.mk>
