# $OpenBSD: Makefile,v 1.11 2019/05/15 12:04:40 kmos Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.8.1
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		print textproc

HOMEPAGE=		http://relatorio.tryton.org/

MAINTAINER =		Sebastien Marie <semarie@online.fr>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

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
