# $OpenBSD: Makefile,v 1.18 2015/06/26 06:55:14 rpointel Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION =	2.6.2
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE =		https://pypi.python.org/pypi/Markdown

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
TEST_DEPENDS=	devel/py-nose \
		textproc/py-yaml

MODPY_PI =	Yes

do-test:
	cd ${WRKSRC}/tests && nosetests

.include <bsd.port.mk>
