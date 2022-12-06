COMMENT=	checks HTML documents for broken links, CLI

MODPY_EGG_VERSION= 10.2.1
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}
WRKDIST=	${WRKDIR}/${DISTNAME:L}

CATEGORIES=	www

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

HOMEPAGE=	https://linkchecker.github.io/linkchecker/

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

# tests exist but need at least parameterized, miniboa to be ported.
# tests use network.
NO_TEST=	Yes

RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR}

pre-configure:
	sed -i \
	    -e 's,share/man/,man/,g' \
	    -e 's,share/linkchecker/examples,share/examples/linkchecker,g' \
	    ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
