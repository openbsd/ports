# $OpenBSD: Makefile,v 1.15 2014/09/08 20:18:34 rpe Exp $

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

MASTER_SITES=	${MASTER_SITE_PYPI:=M/Markdown/}

do-test:
	cd ${WRKSRC}/tests && nosetests

.include <bsd.port.mk>
