# $OpenBSD: Makefile,v 1.1.1.1 2012/07/17 19:24:47 landry Exp $

COMMENT =	lightweight in-process concurrent programming

MODPY_EGG_VERSION = 0.4.0
DISTNAME =	greenlet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
EXTRACT_SUFX =	.zip

CATEGORIES =	devel
HOMEPAGE =	http://pypi.python.org/pypi/greenlet

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=g/greenlet/}

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
