# $OpenBSD: Makefile,v 1.22 2016/04/27 00:51:54 jca Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.6.6
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		markdown-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		0

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-nose \
		textproc/py-yaml

MODPY_PI=	Yes

do-test:
	cd ${WRKSRC}/tests && nosetests

.include <bsd.port.mk>
