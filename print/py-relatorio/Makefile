# $OpenBSD: Makefile,v 1.2 2011/09/16 11:13:41 espie Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.5.5
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
REVISION=		0
PKGNAME=		py-${DISTNAME}

CATEGORIES=		print textproc

HOMEPAGE=		http://relatorio.openhex.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=r/relatorio/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-genshi \
			graphics/pycha \
			textproc/py-yaml \
			textproc/py-lxml

REGRESS_DEPENDS=	${RUN_DEPENDS} \
			devel/py-nose

.include <bsd.port.mk>
