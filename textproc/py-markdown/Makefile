# $OpenBSD: Makefile,v 1.8 2019/04/28 20:51:56 sthen Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.6.11
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		py-markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		1

MAINTAINER=		Daniel Jakots <obsd@chown.me>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/markdown_py{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC}/tests && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
