# $OpenBSD: Makefile,v 1.12 2013/08/10 18:51:40 ajacoutot Exp $

MODPY_EGG_VERSION=	2.8.2

COMMENT=		server of the Tryton application platform

DISTNAME=		trytond-${MODPY_EGG_VERSION}

CATEGORIES=		www

RUN_DEPENDS=		databases/py-psycopg2 \
			devel/py-dateutil \
			devel/py-simplejson \
			devel/py-tz \
			print/py-relatorio \
			security/py-openssl \
			textproc/py-lxml \
			textproc/py-polib \
			STEM-*-pgsql:textproc/sphinx,pgsql \
			www/py-webdav

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,,' ${WRKSRC}/trytond/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${INSTALL_DATA} ${WRKSRC}/etc/trytond.conf \
		${PREFIX}/share/examples/trytond/trytond.conf

.include <bsd.port.mk>
