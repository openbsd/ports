# $OpenBSD: Makefile,v 1.11 2020/02/06 20:26:58 danj Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.6.11
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		py-markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		2

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/markdown_py{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
