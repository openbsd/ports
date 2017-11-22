# $OpenBSD: Makefile,v 1.24 2017/11/22 10:16:01 rpointel Exp $

PORTROACH =	limit:^1\.11

COMMENT =	high-level Python web framework (LTS version)

MODPY_EGG_VERSION =	1.11.7
LNAME =			django-lts

MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =	devel/py-tz,python3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	mv ${PREFIX}/bin/django-admin.py ${PREFIX}/bin/${LNAME}-admin.py

.include <bsd.port.mk>
