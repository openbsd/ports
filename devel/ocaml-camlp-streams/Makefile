COMMENT =	Stream and Genlex libraries for Camlp4/5

CATEGORIES =	devel

V =		5.0.1
GH_ACCOUNT =	ocaml
GH_PROJECT =	camlp-streams
GH_TAGNAME =	v${V}

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		devel/dune

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
MAKE_ENV += OCAML_NATIVE=true
.else
MAKE_ENV += OCAML_NATIVE=false
.endif

do-build:
	cd ${WRKSRC} && dune build -j ${MAKE_JOBS}

do-install:
	cd ${WRKSRC} && dune install -j ${MAKE_JOBS}

do-test:
	cd ${WRKSRC} && dune test

.include <bsd.port.mk>
