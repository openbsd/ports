# $OpenBSD: Makefile,v 1.29 2016/01/12 13:19:37 ajacoutot Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlalchemy-${MODPY_EGG_VERSION:S/p/./}
REVISION =		4

CATEGORIES =		databases

HOMEPAGE =		http://www.sqlalchemy.org/

MAINTAINER =		Will Maier <willmaier@ml1.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sqlalchemy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MAKE_ENV +=		PYTHONPATH=.

# Other DB connectors would work, too.
TEST_DEPENDS =		databases/py-sqlite2 \
			devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
