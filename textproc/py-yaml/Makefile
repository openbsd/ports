# $OpenBSD: Makefile,v 1.25 2022/02/01 18:30:27 sthen Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=5.4.1
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

.if ${FLAVOR:Mpython3}
MODPY_SETUP_ARGS= --with-libyaml
CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
WANTLIB+=	pthread yaml-0 ${MODPY_WANTLIB}
.endif

.include <bsd.port.mk>
