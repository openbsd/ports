# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:13 jasper Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.git-legit.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint \
			devel/py-gitpython

NO_TEST=		Yes

.include <bsd.port.mk>
