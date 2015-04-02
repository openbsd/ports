# $OpenBSD: Makefile,v 1.5 2015/04/02 14:21:14 jasper Exp $

COMMENT =	lightweight in-process concurrent programming
# see slp_platformselect.h
ONLY_FOR_ARCHS =	amd64 arm i386 powerpc sparc sparc64

MODPY_EGG_VERSION = 0.4.0
DISTNAME =	greenlet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
EXTRACT_SUFX =	.zip

CATEGORIES =	devel
HOMEPAGE =	http://pypi.python.org/pypi/greenlet

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_INSTALL=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}
WANTLIB =	${MODPY_WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-greenlet
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-greenlet

.include <bsd.port.mk>
