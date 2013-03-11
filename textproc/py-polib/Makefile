# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:46 espie Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.3
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	http://pypi.python.org/pypi/polib

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://bitbucket.org/izi/polib/downloads/

MODULES =	lang/python

TEST_DEPENDS =	devel/py-coverage

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
