# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:55 sthen Exp $

COMMENT=		template plugin that supports Kid templates

VERSION=		1.0.4
DISTNAME=		TurboKid-${VERSION}
PKGNAME=		py-turbokid-${VERSION}
REVISION =		5

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/

MODULES=		lang/python
RUN_DEPENDS=		devel/py-kid

NO_TEST=		Yes

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
