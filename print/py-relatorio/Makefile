COMMENT=		templating library able to output odt and pdf files

MODPY_DISTV=	0.11.1
DISTNAME=		relatorio-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		print textproc

HOMEPAGE=		https://relatorio.tryton.org/

MAINTAINER =		Sebastien Marie <semarie@kapouay.eu.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		www/py-genshi \
			textproc/py-lxml \
			devel/py-magic

TEST_DEPENDS=		devel/py-nose

.include <bsd.port.mk>
