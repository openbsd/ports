# $OpenBSD: Makefile,v 1.10 2016/01/08 13:17:15 jasper Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.6
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES=	textproc devel


# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
MODPY_PI=	Yes

MODPY_SETUPTOOLS = Yes

TEST_DEPENDS =	devel/py-coverage

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
