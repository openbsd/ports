# $OpenBSD: Makefile,v 1.2 2013/05/14 08:09:24 sthen Exp $

PART =	reg

MODPY_EGG_VERSION =	1.1
REVISION =		0

STATIC_DIR =	${DESTDIR}/${MODPY_SITEPKG}/syncreg/static

post-install:
	${INSTALL_DATA_DIR} ${STATIC_DIR}
	${INSTALL_DATA} ${WRKSRC}/syncreg/static/* ${STATIC_DIR}

.include <bsd.port.mk>
