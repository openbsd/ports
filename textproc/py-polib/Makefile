# $OpenBSD: Makefile,v 1.7 2015/06/11 11:44:01 jasper Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.6
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	http://pypi.python.org/pypi/polib

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
MODPY_PI=	Yes

MODPY_SETUPTOOLS = Yes

TEST_DEPENDS =	devel/py-coverage

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
