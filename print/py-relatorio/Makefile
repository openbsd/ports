# $OpenBSD: Makefile,v 1.3 2013/03/11 11:37:54 espie Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.5.5
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
REVISION=		0
PKGNAME=		py-${DISTNAME}

CATEGORIES=		print textproc

HOMEPAGE=		http://relatorio.openhex.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=r/relatorio/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-genshi \
			graphics/pycha \
			textproc/py-yaml \
			textproc/py-lxml

TEST_DEPENDS=	${RUN_DEPENDS} \
			devel/py-nose

.include <bsd.port.mk>
