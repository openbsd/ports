# $OpenBSD: Makefile,v 1.16 2015/04/02 14:21:17 jasper Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION =	2.4.1
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE =		https://pypi.python.org/pypi/Markdown

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
TEST_DEPENDS=	devel/py-nose

MODPY_PI =	Yes

do-test:
	cd ${WRKSRC}/tests && nosetests

.include <bsd.port.mk>
