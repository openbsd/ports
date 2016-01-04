# $OpenBSD: Makefile,v 1.5 2016/01/04 19:38:30 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.1

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
