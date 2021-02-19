# $OpenBSD: Makefile,v 1.36 2021/02/19 23:13:06 sthen Exp $

COMMENT=	Python syntax highlighter

# 2.6.0+ is py3-only; some ports depending on this require py2:
#   textproc/py-docutils
#   textproc/py-sphinx
MODPY_EGG_VERSION = 2.5.2

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel
REVISION=	2

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pygmentize ${PREFIX}/bin/pygmentize${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
