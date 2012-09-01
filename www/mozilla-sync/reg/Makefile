# $OpenBSD: Makefile,v 1.1.1.1 2012/09/01 16:11:36 landry Exp $

PART =	reg

MODPY_EGG_VERSION =	1.1

STATIC_DIR =	${DESTDIR}/${MODPY_SITEPKG}/syncreg/static

post-install:
	${INSTALL_DATA_DIR} ${STATIC_DIR}
	${INSTALL_DATA} ${WRKSRC}/syncreg/static/* ${STATIC_DIR}

.include <bsd.port.mk>
