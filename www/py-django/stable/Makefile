# $OpenBSD: Makefile,v 1.25 2019/02/11 16:35:40 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	2.1.6

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	mv ${PREFIX}/bin/${LNAME}-admin.py ${PREFIX}/bin/${LNAME}-admin${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
