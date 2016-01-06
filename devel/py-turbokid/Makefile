# $OpenBSD: Makefile,v 1.13 2016/01/06 17:01:54 ajacoutot Exp $

COMMENT=		template plugin that supports Kid templates

VERSION=		1.0.4
DISTNAME=		TurboKid-${VERSION}
PKGNAME=		py-turbokid-${VERSION}
REVISION =		5

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/

MODULES=		lang/python
RUN_DEPENDS=		devel/py-kid

NO_TEST=		Yes

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
