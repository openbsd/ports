# $OpenBSD: Makefile,v 1.1.1.1 2008/10/18 10:54:52 ajacoutot Exp $

COMMENT=	YAML parser and emitter in Python

MODPY_EGG_VERSION=3.06
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pyyaml.org/download/pyyaml/

MODULES=        lang/python

LIB_DEPENDS=	yaml::devel/libyaml

NO_REGRESS=	yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.cfg

.include <bsd.port.mk>
