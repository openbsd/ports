# $OpenBSD: Makefile,v 1.1.1.1 2013/01/21 14:31:53 jasper Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.git-legit.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=l/legit/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint \
			devel/py-gitpython

NO_REGRESS=		Yes

.include <bsd.port.mk>
