# $OpenBSD: Makefile,v 1.8 2019/09/15 11:12:14 ajacoutot Exp $

COMMENT=		terminal session recorder

MODPY_EGG_VERSION=	2.0.2

# MODPY_PI does not work
GH_PROJECT=		asciinema
GH_ACCOUNT=		asciinema
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		textproc graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
