# $OpenBSD: Makefile,v 1.15 2013/12/16 15:45:53 ajacoutot Exp $

COMMENT=		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	2013.1
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		audio devel

HOMEPAGE =		http://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_python-mt m pthread stdc++ tag ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=t/tagpy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS =		lang/python/${MODPY_VERSION} \
			audio/taglib \
			devel/boost

CONFIGURE_ARGS +=	--boost-python-libname=boost_python-mt \
			--boost-compiler=gcc42 \
			--boost-lib-dir=${LOCALBASE}/lib \
			--boost-inc-dir=${LOCALBASE}/include \
			--taglib-lib-dir=${LOCALBASE}/lib \
			--taglib-inc-dir=${LOCALBASE}/include/taglib \

do-configure:
		cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
