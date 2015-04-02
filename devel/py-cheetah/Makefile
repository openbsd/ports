# $OpenBSD: Makefile,v 1.25 2015/04/02 19:38:21 jasper Exp $

COMMENT=		Python-powered template engine and code generator

MODPY_EGG_VERSION=	2.4.4
REVISION=		2
DISTNAME=		Cheetah-${MODPY_EGG_VERSION}
PKGNAME=		py-cheetah-${MODPY_EGG_VERSION}
CATEGORIES=		devel textproc

HOMEPAGE=		http://www.cheetahtemplate.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
TEST_DEPENDS=		devel/py-cheetah
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

WANTLIB +=		${MODPY_WANTLIB}

RUN_DEPENDS=		textproc/markdown

do-test:
	mkdir /tmp/.cheetah
	cd /tmp/.cheetah && cheetah test
	rm -fr /tmp/.cheetah

.include <bsd.port.mk>
