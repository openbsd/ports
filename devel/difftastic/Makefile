COMMENT =		diff tool that compares files based on their syntax

GH_ACCOUNT =		Wilfred
GH_PROJECT =		difftastic
GH_TAGNAME =		0.56.1

HOMEPAGE =		https://difftastic.wilfred.me.uk/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
BUILD_DEPENDS =		textproc/mdbook
COMPILER =		base-clang ports-gcc
WANTLIB += 		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m

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

.include "crates.inc"
.include <bsd.port.mk>
