# $OpenBSD: Makefile,v 1.13 2015/04/02 14:21:16 jasper Exp $

COMMENT=		plugin to support use of Cheetah templates

VERSION=		1.0
DISTNAME=		TurboCheetah-${VERSION}
PKGNAME=		py-turbocheetah-${VERSION}
REVISION =		3

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		T/TurboCheetah

MODULES=		lang/python
RUN_DEPENDS=		devel/py-cheetah
TEST_DEPENDS=	devel/py-cheetah \
			devel/py-nose

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

do-test:
	cd ${WRKSRC} && NOSE_WHERE=turbocheetah/tests nosetests

.include <bsd.port.mk>
