COMMENT=		templating library able to output odt and pdf files

MODPY_DISTV=		0.11.1
DISTNAME=		relatorio-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		print textproc

HOMEPAGE=		https://relatorio.tryton.org/

MAINTAINER =		Sebastien Marie <semarie@kapouay.eu.org>

# GPLv3
PERMIT_PACKAGE=	Yes


MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		www/py-genshi \
			textproc/py-lxml \
			devel/py-magic

.include <bsd.port.mk>
