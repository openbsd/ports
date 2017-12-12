# $OpenBSD: Makefile,v 1.8 2017/12/12 01:45:10 danj Exp $

COMMENT=		templating library able to output odt and pdf files

MODPY_EGG_VERSION=	0.8.0
DISTNAME=		relatorio-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		print textproc

HOMEPAGE=		http://relatorio.tryton.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVOR?=
FLAVORS=		python3

RUN_DEPENDS=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-libmagic${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS+=		graphics/pycha \
			textproc/py-yaml
.endif

TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}


.include <bsd.port.mk>
