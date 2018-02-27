# $OpenBSD: Makefile,v 1.7 2018/02/27 21:47:38 espie Exp $

COMMENT =		OCaml parser generator for LR(1) grammars

DISTNAME =		menhir-20170101
PKGNAME =		ocaml-${DISTNAME}
REVISION =		0

MASTER_SITES =		http://cristal.inria.fr/~fpottier/menhir/

HOMEPAGE =		http://cristal.inria.fr/~fpottier/menhir/
CATEGORIES =		devel

# QPLv1/LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib devel/ocaml-ocamlbuild

USE_GMAKE =		Yes
MAKE_FLAGS =		docdir='${WRKINST}${PREFIX}/share/doc/ocaml-menhir' \
			mandir='${WRKINST}${PREFIX}/man/man1'

NO_TEST =		Yes

.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=		TARGET=byte
.endif

.include <bsd.port.mk>
