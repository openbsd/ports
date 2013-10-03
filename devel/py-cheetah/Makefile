# $OpenBSD: Makefile,v 1.23 2013/10/03 16:37:15 dcoppa Exp $

COMMENT=		Python-powered template engine and code generator

VERSION=		2.4.4
REVISION=		2
DISTNAME=		Cheetah-${VERSION}
PKGNAME=		py-cheetah-${VERSION}
CATEGORIES=		devel textproc

HOMEPAGE=		http://www.cheetahtemplate.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=C/Cheetah/}

MODULES=		lang/python
TEST_DEPENDS=	devel/py-cheetah
MODPY_SETUPTOOLS=	Yes
MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

WANTLIB +=		${MODPY_WANTLIB}

SUBST_VARS=		VERSION

RUN_DEPENDS=		textproc/markdown

do-test:
	mkdir /tmp/.cheetah
	cd /tmp/.cheetah && cheetah test
	rm -fr /tmp/.cheetah

.include <bsd.port.mk>
