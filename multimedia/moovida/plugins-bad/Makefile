# $OpenBSD: Makefile,v 1.16 2014/08/14 07:06:00 ajacoutot Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
REVISION =	12

BUILD_DEPENDS +=	multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
