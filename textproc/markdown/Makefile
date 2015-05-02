# $OpenBSD: Makefile,v 1.17 2015/05/02 13:36:44 rpe Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION =	2.6.1
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
