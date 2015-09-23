# $OpenBSD: Makefile,v 1.5 2015/09/23 20:04:10 jca Exp $

COMMENT =	CEF logs emitter module

MODPY_EGG_VERSION =	0.5
DISTNAME =	cef-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

HOMEPAGE =	http://pypi.python.org/pypi/cef

# MPL
PERMIT_PACKAGE_CDROM =	Yes

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
