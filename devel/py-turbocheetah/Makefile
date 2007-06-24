# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 22:01:47 martynas Exp $

COMMENT=		"plugin to support use of Cheetah templates"

V=			0.9.5
DISTNAME=		TurboCheetah-${V}
PKGNAME=		py-turbocheetah-${V}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/T/TurboCheetah/

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-cheetah
REGRESS_DEPENDS=	::devel/py-cheetah \
			::devel/py-nose

MAKE_ENV=		NOSE_WHERE=turbocheetah/tests

REGRESS_TARGET=		nosetests

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
