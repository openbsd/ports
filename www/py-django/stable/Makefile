# $OpenBSD: Makefile,v 1.4 2015/11/30 12:26:20 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.7.11

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
