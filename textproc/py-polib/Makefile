# $OpenBSD: Makefile,v 1.8 2015/09/29 10:52:53 sthen Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.6
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
