# $OpenBSD: Makefile,v 1.6 2014/04/12 07:36:58 benoit Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.4
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	http://pypi.python.org/pypi/polib

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://bitbucket.org/izi/polib/downloads/

MODULES =	lang/python

TEST_DEPENDS =	devel/py-coverage

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
