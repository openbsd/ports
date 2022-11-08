COMMENT =		diff tool that compares files based on their syntax

GH_ACCOUNT =		Wilfred
GH_PROJECT =		difftastic
GH_TAGNAME =		0.37.0

HOMEPAGE =		https://difftastic.wilfred.me.uk/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo
BUILD_DEPENDS = 	textproc/mdbook

WANTLIB += 		c c++ c++abi m pthread

.include "crates.inc"

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/difftastic

# Prepare directory for HTML manual
post-extract:
	sed -i 's/DFT_VERSION_HERE/${GH_TAGNAME}/g' \
	${WRKSRC}/manual/src/introduction.md
	sed -i '18,20d' ${WRKSRC}/manual/book.toml

# Build and install HTML manual with mdBook
pre-install:
	mkdir -p ${WRKSRC}/html_manual
	mdbook build -d ${WRKSRC}/html_manual ${WRKSRC}/manual

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKSRC}/html_manual/* ${DOCDIR}

.include <bsd.port.mk>
