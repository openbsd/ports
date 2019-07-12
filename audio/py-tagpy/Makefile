# $OpenBSD: Makefile,v 1.29 2019/07/12 20:43:40 sthen Exp $

COMMENT=		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	2013.1
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		10

CATEGORIES =		audio devel

HOMEPAGE =		http://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += boost_python${MODPY_MAJOR_VERSION:M3}-mt m pthread ${COMPILER_LIBCXX} tag ${MODPY_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS =		lang/python/${MODPY_VERSION} \
			audio/taglib \
			devel/boost>=1.53.0p5

CONFIGURE_ARGS +=	--boost-compiler=gcc42 \
			--boost-lib-dir=${LOCALBASE}/lib \
			--boost-inc-dir=${LOCALBASE}/include \
			--taglib-lib-dir=${LOCALBASE}/lib \
			--taglib-inc-dir=${LOCALBASE}/include/taglib \

.if ${FLAVOR:Mpython3}
CONFIGURE_ARGS +=	--boost-python-libname=boost_python${MODPY_MAJOR_VERSION}-mt
.else
CONFIGURE_ARGS +=	--boost-python-libname=boost_python-mt
.endif

do-configure:
		cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
