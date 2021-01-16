# $OpenBSD: Makefile,v 1.53 2021/01/16 21:22:06 sthen Exp $

COMMENT=	checks HTML documents for broken links, CLI

MODPY_EGG_VERSION= 10.0.0
GH_ACCOUNT=	linkchecker
GH_PROJECT=	linkchecker
GH_TAGNAME=	v${MODPY_EGG_VERSION}

CATEGORIES=	www

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

HOMEPAGE=	https://linkchecker.github.io/linkchecker/

MODPY_SETUPTOOLS= Yes
MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

# tests exist but need at least parameterized, miniboa to be ported.
# tests use network.
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-xdg${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

SEPARATE_BUILD=	Yes
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
