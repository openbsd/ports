# $OpenBSD: Makefile,v 1.9 2016/04/08 16:13:30 rpointel Exp $

COMMENT =	high-level Python web framework

MODPY_EGG_VERSION =	1.9.5

LNAME =			django

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
