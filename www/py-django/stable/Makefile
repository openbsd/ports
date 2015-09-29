# $OpenBSD: Makefile,v 1.3 2015/09/29 10:52:54 sthen Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.7.10
REVISION =		0

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
