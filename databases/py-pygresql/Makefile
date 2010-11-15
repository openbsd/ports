# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:53 espie Exp $

COMMENT =	PostgreSQL module for Python

MODPY_EGG_VERSION =	4.0
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
LIB_DEPENDS =	databases/postgresql
WANTLIB +=	pq>=5
BUILD_DEPENDS =	databases/postgresql,-server
RUN_DEPENDS =	databases/postgresql,-main

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
