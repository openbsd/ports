# $OpenBSD: Makefile,v 1.12 2014/08/19 14:25:11 rpointel Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.11
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pyyaml.org/download/pyyaml/

WANTLIB+=	pthread yaml ${MODPY_WANTLIB}

MODULES=	lang/python

LIB_DEPENDS=	devel/libyaml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
