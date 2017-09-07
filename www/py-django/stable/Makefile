# $OpenBSD: Makefile,v 1.19 2017/09/07 09:22:04 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.10.8

LNAME =			django

FLAVORS =	python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=	devel/py-mock
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-${LNAME}-${MODPY_EGG_VERSION}
	mv ${PREFIX}/bin/${LNAME}-admin.py ${PREFIX}/bin/${LNAME}-admin${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
