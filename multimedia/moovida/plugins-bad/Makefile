# $OpenBSD: Makefile,v 1.13 2013/09/10 13:26:47 ajacoutot Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
REVISION =	9

BUILD_DEPENDS +=	multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
