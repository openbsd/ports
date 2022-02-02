# $OpenBSD: Makefile,v 1.26 2022/02/02 10:37:23 sthen Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=5.4.1
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	pthread yaml-0 ${MODPY_WANTLIB}

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

MODPY_SETUP_ARGS= --with-libyaml
CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
