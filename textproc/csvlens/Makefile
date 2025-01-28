COMMENT =		command line csv viewer

GH_ACCOUNT =		YS-L
GH_PROJECT =		csvlens
GH_TAGNAME =		v0.11.0
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
DOCDIR =		${PREFIX}/share/doc/csvlens

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${DOCDIR}

.include "crates.inc"

.include <bsd.port.mk>
