# $OpenBSD: Makefile,v 1.6 2016/02/02 20:23:10 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.2

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
