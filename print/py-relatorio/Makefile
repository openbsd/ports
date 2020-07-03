# $OpenBSD: Makefile,v 1.15 2020/07/03 21:13:04 sthen Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		print textproc

HOMEPAGE=		https://relatorio.tryton.org/

MAINTAINER =		Sebastien Marie <semarie@online.fr>

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVOR?=
FLAVORS=		python3

RUN_DEPENDS=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-magic${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS+=		graphics/pycha \
			textproc/py-yaml
.endif

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
