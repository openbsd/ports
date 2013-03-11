# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:32 espie Exp $

COMMENT =	CEF logs emitter module

MODPY_EGG_VERSION = 0.3
DISTNAME =	cef-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils
HOMEPAGE =	http://pypi.python.org/pypi/cef

# MPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=c/cef/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
NO_TEST =	Yes
MODPY_DISTUTILS_INSTALL=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cef
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-cef

.include <bsd.port.mk>
