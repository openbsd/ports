# $OpenBSD: Makefile,v 1.34 2019/01/07 08:46:56 rpointel Exp $

PORTROACH =	limit:^1\.11

COMMENT =	high-level Python web framework (LTS version)

MODPY_EGG_VERSION =	1.11.18
LNAME =			django-lts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	mv ${PREFIX}/bin/django-admin.py ${PREFIX}/bin/${LNAME}-admin.py

.include <bsd.port.mk>
