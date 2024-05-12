COMMENT =		diff tool that compares files based on their syntax

GH_ACCOUNT =		Wilfred
GH_PROJECT =		difftastic
GH_TAGNAME =		0.58.0

HOMEPAGE =		https://difftastic.wilfred.me.uk/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
COMPILER =		base-clang ports-gcc
WANTLIB += 		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/difftastic

post-install:
	${INSTALL_MAN} ${WRKSRC}/difft.1 ${PREFIX}/man/man1

.include "crates.inc"
.include <bsd.port.mk>
