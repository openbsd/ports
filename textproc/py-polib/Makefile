# $OpenBSD: Makefile,v 1.3 2013/03/05 08:49:33 benoit Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.3
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	http://pypi.python.org/pypi/polib

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://bitbucket.org/izi/polib/downloads/

MODULES =	lang/python

REGRESS_DEPENDS =	devel/py-coverage

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
