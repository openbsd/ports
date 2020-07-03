# $OpenBSD: Makefile,v 1.12 2020/07/03 21:13:17 sthen Exp $

COMMENT=		show differences between XML files/DOM trees

MODPY_EGG_VERSION=	2.3
DISTNAME=		xmldiff-${MODPY_EGG_VERSION}
PKGNAME=		py-xmldiff-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		1

HOMEPAGE=		https://github.com/Shoobx/xmldiff

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
