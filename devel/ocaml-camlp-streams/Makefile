COMMENT =	Stream and Genlex libraries for Camlp4/5

CATEGORIES =	devel

V =		5.0.1
REVISION =	1
GH_ACCOUNT =	ocaml
GH_PROJECT =	camlp-streams
GH_TAGNAME =	v${V}

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		devel/dune

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} dune build -j ${MAKE_JOBS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} DESTDIR="${WRKINST}" dune install -j ${MAKE_JOBS}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} dune test

.include <bsd.port.mk>
