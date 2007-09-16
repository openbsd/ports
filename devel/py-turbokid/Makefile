# $OpenBSD: Makefile,v 1.2 2007/09/16 02:53:12 merdely Exp $

COMMENT=		template plugin that supports Kid templates

V=			1.0.1
DISTNAME=		TurboKid-${V}
PKGNAME=		py-turbokid-${V}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/T/TurboKid/

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-kid
REGRESS_DEPENDS=	::devel/py-kid \
			::devel/py-nose

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
