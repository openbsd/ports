# $OpenBSD: Makefile,v 1.10 2016/05/09 17:21:05 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.6

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
