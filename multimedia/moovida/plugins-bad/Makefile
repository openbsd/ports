# $OpenBSD: Makefile,v 1.2 2010/03/29 07:53:51 ajacoutot Exp $

COMMENT =	Moovida media center - bad plugins
DISTNAME =	moovida-plugins-bad-${VERSION}
PKGNAME =	${DISTNAME}p0

BUILD_DEPENDS +=	::multimedia/moovida/core

#workaround weird infinite loop
do-install:
	${_MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -Rf ${WRKSRC}/build

.include <bsd.port.mk>
