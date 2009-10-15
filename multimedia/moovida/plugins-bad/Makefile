# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 15:41:55 landry Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}

BUILD_DEPENDS +=	::multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
