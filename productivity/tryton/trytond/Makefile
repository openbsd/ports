# $OpenBSD: Makefile,v 1.5 2011/11/02 14:29:39 ajacoutot Exp $

COMMENT=		server of the Tryton application platform

DISTNAME=		trytond-${MODPY_EGG_VERSION}

CATEGORIES=		www

RUN_DEPENDS=		textproc/py-lxml \
			devel/py-dateutil \
			devel/py-simplejson \
			databases/py-psycopg2 \
			devel/py-tz \
			print/py-relatorio \
			security/py-openssl \
			textproc/py-polib \
			www/py-webdav

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,,' ${WRKSRC}/trytond/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${INSTALL_DATA} ${WRKSRC}/etc/trytond.conf \
		${PREFIX}/share/examples/trytond/trytond.conf

.include <bsd.port.mk>
