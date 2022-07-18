V =		5.4.0
COMMENT =	marked-up plain text to formatted document converter
PKGNAME =	multimarkdown-${V:C/-/./}
CATEGORIES =	textproc

GH_ACCOUNT =	fletcher
GH_PROJECT =	MultiMarkdown-5
GH_TAGNAME =	${V}

TESTS_COMMIT =	8d5ad66e3bbaeb0de8646783bfe964261ddb39c7
DIST_SUBDIR =	multimarkdown
MASTER_SITES0 =	https://github.com/fletcher/MMD-Test-Suite/archive/
DISTFILES =	${GH_DISTFILE} ${TESTS_COMMIT}${EXTRACT_SUFX}:0
HOMEPAGE =	http://fletcherpenney.net/multimarkdown/
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# Dual licensed: MIT and GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += 	c

BUILD_DEPENDS =	devel/greg

MODULES =	devel/cmake

CFLAGS +=	-DHAVE_SRAND_DETERMINISTIC

CONFIGURE_ARGS += -DGREG=${LOCALBASE}/bin/greg

post-extract:
	rm -rf ${WRKSRC}/submodules/MarkdownTest
	cp -r ${WRKDIR}/MMD-Test-Suite-${TESTS_COMMIT} \
		${WRKSRC}/submodules/MarkdownTest

pre-configure:
	touch ${WRKBUILD}/README.html

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/multimarkdown ${PREFIX}/bin/

.include <bsd.port.mk>
