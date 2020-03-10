# $OpenBSD: Makefile,v 1.20 2020/03/10 03:31:45 daniel Exp $

COMMENT =		OCaml parser generator for LR(1) grammars

V =			20190924
DISTNAME =		menhir-${V}
PKGNAME =		ocaml-${DISTNAME}
REVISION =		0

MASTER_SITES =		https://gitlab.inria.fr/fpottier/menhir/-/archive/${V}/

HOMEPAGE =		http://cristal.inria.fr/~fpottier/menhir/
CATEGORIES =		devel

# QPLv1/LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m pthread
BUILD_DEPENDS =		sysutils/findlib devel/ocaml-ocamlbuild
RUN_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes
MAKE_FLAGS =		docdir='${WRKINST}${PREFIX}/share/doc/ocaml-menhir' \
			mandir='${WRKINST}${PREFIX}/man/man1'

NO_TEST =		Yes

.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=		TARGET=byte
.endif

.include <bsd.port.mk>
