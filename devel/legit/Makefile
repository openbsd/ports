# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:09 espie Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.git-legit.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=l/legit/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint \
			devel/py-gitpython

NO_TEST=		Yes

.include <bsd.port.mk>
