# $OpenBSD: Makefile,v 1.2 2015/08/20 11:26:54 jasper Exp $

COMMENT =	high-level Python web framework (LTS version)

MODPY_EGG_VERSION =	1.8.4
LNAME =			django-lts

MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}
	mv ${PREFIX}/bin/django-admin.py ${PREFIX}/bin/${LNAME}-admin.py

.include <bsd.port.mk>
