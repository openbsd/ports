# $OpenBSD: Makefile,v 1.32 2020/03/09 14:22:57 sthen Exp $

COMMENT=	Python syntax highlighter

# 2.6.1 requires py3; some dep's still require py2:
# security/pwntools - py3 supported in newer version
# www/trac - see https://trac.edgewall.org/ticket/12130, also needs py3
#   support in py-subversion (in 1.14 dev releases)
MODPY_EGG_VERSION = 2.5.2

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel

HOMEPAGE=	http://pygments.org/

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
