# $OpenBSD: Makefile,v 1.19 2015/11/29 08:25:19 ajacoutot Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.6.5
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		https://pypi.python.org/pypi/Markdown

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-nose \
		textproc/py-yaml

MODPY_PI=	Yes

do-test:
	cd ${WRKSRC}/tests && nosetests

.include <bsd.port.mk>
