# $OpenBSD: Makefile,v 1.6 2009/03/15 13:03:42 espie Exp $

COMMENT=		template plugin that supports Kid templates

VERSION=		1.0.4
DISTNAME=		TurboKid-${VERSION}
PKGNAME=		py-turbokid-${VERSION}p0

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/

MODULES=		lang/python
RUN_DEPENDS=		::devel/py-kid

NO_REGRESS=		Yes

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
