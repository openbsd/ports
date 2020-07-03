# $OpenBSD: Makefile,v 1.25 2020/07/03 21:12:37 sthen Exp $

COMMENT =	PostgreSQL module for Python

MODPY_EGG_VERSION =	5.1.1
DISTNAME =		PyGreSQL-${MODPY_EGG_VERSION}
PKGNAME =		py-pygresql-${MODPY_EGG_VERSION}
CATEGORIES =		databases
REVISION =		0

HOMEPAGE =		http://www.pygresql.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

FLAVORS=	python3
FLAVOR ?=

MODULES =	lang/python
LIB_DEPENDS =	databases/postgresql
WANTLIB +=	pq>=5 ${MODPY_WANTLIB} pthread
BUILD_DEPENDS =	databases/postgresql,-server
RUN_DEPENDS =	databases/postgresql,-main

MODPY_PI =	Yes
EXTRACT_SUFX =	.tar.gz
NO_TEST =	Yes

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pygresql
	cd ${WRKBUILD} && tar -cf - docs tests | \
		tar -xf - -C ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pygresql/

.include <bsd.port.mk>
