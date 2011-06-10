# $OpenBSD: Makefile,v 1.1.1.1 2011/06/10 11:49:30 ajacoutot Exp $

COMMENT=		server of the Tryton application platform

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		trytond-${MODPY_EGG_VERSION}

CATEGORIES=		www

RUN_DEPENDS=		textproc/py-lxml \
			devel/py-dateutil \
			devel/py-simplejson \
			databases/py-psycopg2 \
			devel/py-tz \
			print/py-relatorio \
			security/py-openssl \
			www/py-webdav

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,,' ${WRKSRC}/trytond/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${INSTALL_DATA} ${WRKSRC}/etc/trytond.conf \
		${PREFIX}/share/examples/trytond/trytond.conf

.include <bsd.port.mk>
