# $OpenBSD: Makefile,v 1.7 2009/11/23 00:45:27 fgsch Exp $

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

MASTER_SITES=		${MASTER_SITE_PYPI:=T/TurboCheetah/}

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-cheetah
REGRESS_DEPENDS=	::devel/py-cheetah \
			::devel/py-nose

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

do-regress:
	cd ${WRKSRC} && NOSE_WHERE=turbocheetah/tests nosetests

.include <bsd.port.mk>
