# $OpenBSD: Makefile,v 1.1 2016/06/23 13:54:26 krw Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

V =		1.3.2
GH_ACCOUNT =	mjambon
GH_PROJECT =	cppo
GH_TAGNAME =	v${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/mjambon/cppo

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m
MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib devel/ocaml-ocamlbuild

USE_GMAKE =		Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET =		ocamlbuild opt
.else
ALL_TARGET =		ocamlbuild all
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-cppo
	${INSTALL_DATA} \
		${WRKSRC}/{Changes,README.md} \
		${PREFIX}/share/doc/ocaml-cppo


.include <bsd.port.mk>
