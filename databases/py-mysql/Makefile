# $OpenBSD: Makefile,v 1.44 2013/06/12 20:36:33 brad Exp $

SHARED_ONLY =	Yes

COMMENT =	Python interface to MySQL

MODPY_EGG_VERSION =	1.2.3
DISTNAME =	MySQL-python-${MODPY_EGG_VERSION}
PKGNAME =	py-mysql-${MODPY_EGG_VERSION}
REVISION =	4

CATEGORIES =	databases

HOMEPAGE =	http://mysql-python.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	crypto m pthread ssl z ${MODPY_WANTLIB}
WANTLIB +=	lib/mysql/mysqlclient_r>=14

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=mysql-python/}

MODULES =	lang/python
LIB_DEPENDS =	databases/mysql

NO_TEST =	Yes

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mysql
	${INSTALL_DATA} ${WRKBUILD}/doc/*.txt ${PREFIX}/share/doc/py-mysql/

.include <bsd.port.mk>
