# $OpenBSD: Makefile,v 1.7 2016/03/10 09:31:07 jasper Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.3

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
