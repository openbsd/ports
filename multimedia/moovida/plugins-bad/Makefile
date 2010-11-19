# $OpenBSD: Makefile,v 1.4 2010/11/19 07:23:15 espie Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
REVISION =	1

BUILD_DEPENDS +=	multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
