# $OpenBSD: Makefile,v 1.18 2021/11/02 00:01:54 sthen Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.9.2
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		print textproc

HOMEPAGE=		https://relatorio.tryton.org/

MAINTAINER =		Sebastien Marie <semarie@online.fr>

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVOR=			python3
FLAVORS=		python3

RUN_DEPENDS=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-magic${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
