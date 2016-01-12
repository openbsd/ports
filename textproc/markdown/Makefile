# $OpenBSD: Makefile,v 1.21 2016/01/12 13:19:37 ajacoutot Exp $

COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	2.6.5
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
