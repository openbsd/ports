# $OpenBSD: Makefile,v 1.21 2014/08/30 12:47:08 ajacoutot Exp $

MODPY_EGG_VERSION =	3.2.2

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

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,,' ${WRKSRC}/trytond/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${INSTALL_DATA} ${WRKSRC}/etc/trytond.conf \
		${PREFIX}/share/examples/trytond/trytond.conf

.include <bsd.port.mk>
