# $OpenBSD: Makefile,v 1.14 2015/04/02 19:38:21 jasper Exp $

COMMENT=		plugin to support use of Cheetah templates

MODPY_EGG_VERSION=	1.0
DISTNAME=		TurboCheetah-${MODPY_EGG_VERSION}
PKGNAME=		py-turbocheetah-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
RUN_DEPENDS=		devel/py-cheetah
TEST_DEPENDS=	devel/py-cheetah \
			devel/py-nose

MODPY_SETUPTOOLS=	Yes

do-test:
	cd ${WRKSRC} && NOSE_WHERE=turbocheetah/tests nosetests

.include <bsd.port.mk>
