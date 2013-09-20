# $OpenBSD: Makefile,v 1.11 2013/09/20 16:47:01 fgsch Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	0.9.6
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		3
CATEGORIES=    		devel

HOMEPAGE=		http://babel.edgewall.org/
MASTER_SITES=		http://ftp.edgewall.com/pub/babel/

MODULES=		lang/python
PKG_ARCH=		*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		devel/py-tz${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pybabel \
		${PREFIX}/bin/pybabel${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
