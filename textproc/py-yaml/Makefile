# $OpenBSD: Makefile,v 1.2 2008/12/31 12:14:27 pea Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.08
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pyyaml.org/download/pyyaml/

MODULES=	lang/python

LIB_DEPENDS=	yaml::devel/libyaml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} test

.include <bsd.port.mk>
