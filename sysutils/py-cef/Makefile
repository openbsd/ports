# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:49 sthen Exp $

COMMENT =	CEF logs emitter module

MODPY_EGG_VERSION =	0.5
DISTNAME =	cef-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	sysutils


# MPL
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_INSTALL=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cef
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-cef

.include <bsd.port.mk>
