# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:37 sthen Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.2.0
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel
EXTRACT_SUFX=		.zip

HOMEPAGE=		http://www.git-legit.org/

# BSD
PERMIT_PACKAGE=	Yes


MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint>=0.5.1 \
			devel/py-gitpython>=1.0.2 \
			devel/py-six

NO_TEST=		Yes

.include <bsd.port.mk>
