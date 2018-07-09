# $OpenBSD: Makefile,v 1.18 2018/07/09 06:37:46 rpointel Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.13
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/yaml/pyyaml

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://pyyaml.org/download/pyyaml/

WANTLIB+=	pthread yaml ${MODPY_WANTLIB}

MODULES=	lang/python

FLAVORS =	python3
FLAVOR ?=

LIB_DEPENDS=	devel/libyaml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
