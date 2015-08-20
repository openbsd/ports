# $OpenBSD: Makefile,v 1.2 2015/08/20 11:28:46 jasper Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.7.10

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
