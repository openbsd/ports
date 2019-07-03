# $OpenBSD: Makefile,v 1.28 2019/07/03 09:41:46 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	2.2.3

LNAME =			django

RUN_DEPENDS +=	databases/py-sqlparse,python3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	mv ${PREFIX}/bin/${LNAME}-admin.py ${PREFIX}/bin/${LNAME}-admin${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
