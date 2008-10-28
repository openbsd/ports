# $OpenBSD: Makefile,v 1.2 2008/10/28 09:28:24 ajacoutot Exp $

COMMENT =	PostgreSQL module for Python

MODPY_EGG_VERSION =	3.8.1
DISTNAME =		PyGreSQL-${MODPY_EGG_VERSION}
PKGNAME =		py-pygresql-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		http://www.pygresql.org/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python
LIB_DEPENDS =	pq.>=5:postgresql-client-*:databases/postgresql
BUILD_DEPENDS =	:postgresql-server-*:databases/postgresql,-server
RUN_DEPENDS =	:postgresql-client-*:databases/postgresql,-main

MASTER_SITES =	ftp://ftp.pygresql.org/pub/distrib/
EXTRACT_SUFX =	.tgz
NO_REGRESS =	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/tutorial/advanced.py ${WRKSRC}/tutorial/basics.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pygresql
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pygresql
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/py-pygresql/
	${INSTALL_DATA} ${WRKSRC}/tutorial/*.py ${PREFIX}/share/examples/py-pygresql/

.include <bsd.port.mk>
