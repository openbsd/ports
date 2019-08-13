# $OpenBSD: Makefile,v 1.9 2019/08/13 13:04:54 kmos Exp $

COMMENT=		show differences between XML files/DOM trees

MODPY_EGG_VERSION=	2.3
DISTNAME=		xmldiff-${MODPY_EGG_VERSION}
PKGNAME=		py-xmldiff-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/Shoobx/xmldiff

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
