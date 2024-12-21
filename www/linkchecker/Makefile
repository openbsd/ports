COMMENT=	checks HTML documents for broken links, CLI

MODPY_DISTV=	10.5.0
DISTNAME=	LinkChecker-${MODPY_DISTV}
PKGNAME=	${DISTNAME:L}
#WRKDIST=	${WRKDIR}/${DISTNAME:L}
REVISION=	0

CATEGORIES=	www

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	${MODPY_WANTLIB} pthread

HOMEPAGE=	https://linkchecker.github.io/linkchecker/

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-requests \
		net/py-dnspython \
		www/py-beautifulsoup4
TEST_DEPENDS=	devel/py-parameterized \

pre-configure:
	sed -i \
	    -e 's,share/man/,man/,g' \
	    -e 's,share/linkchecker/examples,share/examples/linkchecker,g' \
	    ${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
