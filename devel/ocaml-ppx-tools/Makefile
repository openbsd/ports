# $OpenBSD: Makefile,v 1.1.1.1 2015/08/30 15:47:06 avsm Exp $

COMMENT =	tools for authors of OCaml ppx rewriters
CATEGORIES =	devel

V =		0.99.2
GH_ACCOUNT =	alainfrisch
GH_PROJECT =	ppx_tools
GH_TAGNAME =	ppx_tools_${V}
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-ppx-tools-${V}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

ALL_TARGET =    byte
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=   opt
.if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=   dyn
.endif
.endif

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml
BUILD_DEPENDS =	sysutils/findlib
USE_GMAKE =	Yes
NO_TEST = 	Yes

.include <bsd.port.mk>
