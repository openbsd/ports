# $OpenBSD: Makefile,v 1.7 2017/10/09 15:51:26 danj Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.7.1
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		print textproc

HOMEPAGE=		http://relatorio.tryton.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-genshi \
			graphics/pycha \
			textproc/py-yaml \
			textproc/py-lxml

TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-nose

.include <bsd.port.mk>
