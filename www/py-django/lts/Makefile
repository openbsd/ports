# $OpenBSD: Makefile,v 1.5 2015/11/11 09:15:04 rpointel Exp $

COMMENT =	high-level Python web framework (LTS version)

MODPY_EGG_VERSION =	1.8.6
LNAME =			django-lts

MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}
	mv ${PREFIX}/bin/django-admin.py ${PREFIX}/bin/${LNAME}-admin.py

.include <bsd.port.mk>
