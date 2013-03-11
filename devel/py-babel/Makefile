# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:25 espie Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	0.9.6
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		1
CATEGORIES=    		devel

HOMEPAGE=		http://babel.edgewall.org/
MASTER_SITES=		http://ftp.edgewall.com/pub/babel/

MODULES=		lang/python
PKG_ARCH=		*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-tz

.include <bsd.port.mk>
