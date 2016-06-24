# $OpenBSD: Makefile,v 1.4 2016/06/24 15:59:12 krw Exp $

COMMENT =	tools for authors of OCaml ppx rewriters
CATEGORIES =	devel

V =		4.03.0
GH_ACCOUNT =	alainfrisch
GH_PROJECT =	ppx_tools
GH_TAGNAME =	v${V}
PKGNAME =	ocaml-ppx-tools-${V}

MODULES =	lang/ocaml
BUILD_DEPENDS =	sysutils/findlib
USE_GMAKE =	Yes
NO_TEST = 	Yes

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


.include <bsd.port.mk>
