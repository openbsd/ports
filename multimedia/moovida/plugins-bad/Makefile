# $OpenBSD: Makefile,v 1.7 2011/09/16 10:31:23 espie Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
REVISION =	4

BUILD_DEPENDS +=	multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
