# $OpenBSD: Makefile,v 1.8 2016/03/31 19:06:23 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.4

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
