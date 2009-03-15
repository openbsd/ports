# $OpenBSD: Makefile,v 1.6 2009/03/15 13:03:41 espie Exp $

COMMENT=		plugin to support use of Cheetah templates

VERSION=		1.0
DISTNAME=		TurboCheetah-${VERSION}
PKGNAME=		py-turbocheetah-${VERSION}p0

CATEGORIES=		devel

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

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

do-regress:
	cd ${WRKSRC} && NOSE_WHERE=turbocheetah/tests nosetests

.include <bsd.port.mk>
