COMMENT=	checks HTML documents for broken links, CLI

MODPY_EGG_VERSION= 10.1.0
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}

CATEGORIES=	www

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

HOMEPAGE=	https://linkchecker.github.io/linkchecker/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

# tests exist but need at least parameterized, miniboa to be ported.
# tests use network.
NO_TEST=	Yes

BUILD_DEPENDS=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-xdg${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
