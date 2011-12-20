# $OpenBSD: Makefile,v 1.8 2011/12/20 19:03:58 jasper Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
REVISION =	5

BUILD_DEPENDS +=	multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
