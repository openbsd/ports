# $OpenBSD: Makefile,v 1.4 2015/09/29 10:51:43 sthen Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0

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
