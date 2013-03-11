# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:46 espie Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.08
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
REVISION=	5
CATEGORIES=	textproc

HOMEPAGE=	http://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pyyaml.org/download/pyyaml/

WANTLIB+=	yaml ${MODPY_WANTLIB}

MODULES=	lang/python

LIB_DEPENDS=	devel/libyaml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
