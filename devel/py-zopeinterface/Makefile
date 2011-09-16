# $OpenBSD: Makefile,v 1.14 2011/09/16 09:24:56 espie Exp $

COMMENT=	object interface infrastructure from Zope 3

MODPY_EGG_VERSION=	3.6.1
REVISION=	2

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.interface

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=z/zope.interface/}

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

WANTLIB +=	${MODPY_WANTLIB}

do-regress: install
	for f in `ls ${WRKSRC}/src/zope/interface/tests/test_*.py`; do \
	  ${MODPY_BIN} -m zope.interface.tests.`basename $$f .py` || true; \
	done

.include <bsd.port.mk>
