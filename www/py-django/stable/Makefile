# $OpenBSD: Makefile,v 1.1 2015/07/27 20:01:02 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.7.9
REVISION = 		0

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
