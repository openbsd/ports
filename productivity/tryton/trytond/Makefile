# $OpenBSD: Makefile,v 1.41 2016/07/05 07:22:24 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.16

COMMENT =		server of the Tryton application platform

DISTNAME =		trytond-${MODPY_EGG_VERSION}

CATEGORIES =		www

RUN_DEPENDS =		databases/py-psycopg2 \
			databases/py-sql \
			devel/py-dateutil \
			devel/py-tz \
			print/py-relatorio \
			security/py-openssl \
			textproc/py-lxml \
			textproc/py-polib \
			STEM-*-pgsql:textproc/sphinx,pgsql \
			www/py-webdav

# optional: graphviz has a lot of dependencies
#RUN_DEPENDS +=		graphics/py-dot

MODULES +=		databases/postgresql
# py-psycopg2 doesn't seem to have a way to use socket anywhere but /tmp:
MODPOSTGRESQL_TEST_PGHOST = /tmp
MODPOSTGRESQL_TEST_CMD = ${MODPY_TEST_TARGET}
# give the tests a database name to use
MAKE_ENV =		DB_NAME=trytond_test

pre-configure:
	sed -i 's,/var/lib,/var/db,' ${WRKSRC}/trytond/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${INSTALL_DATA} ${WRKSRC}/etc/trytond.conf \
		${PREFIX}/share/examples/trytond/trytond.conf

.include <bsd.port.mk>
