# $OpenBSD: Makefile,v 1.12 2017/04/19 12:02:57 edd Exp $

COMMENT =	lightweight in-process concurrent programming
# see slp_platformselect.h
ONLY_FOR_ARCHS =	amd64 arm i386 powerpc sparc64

MODPY_EGG_VERSION = 0.4.9
DISTNAME =	greenlet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0
EXTRACT_SUFX =	.zip

CATEGORIES =	devel

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_INSTALL=	install --prefix=${LOCALBASE} \
				--root=${DESTDIR}
FLAVORS =	python3
FLAVOR ?=

INCL_DIR =	${MODPY_INCDIR:S/${LOCALBASE}\///}
SUBST_VARS +=	INCL_DIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}greenlet

.include <bsd.port.mk>
