# $OpenBSD: Makefile,v 1.4 2016/04/25 08:17:08 daniel Exp $

COMMENT =		OCaml parser generator for LR(1) grammars

DISTNAME =		menhir-20160303
PKGNAME =		ocaml-${DISTNAME}

MASTER_SITES =		http://cristal.inria.fr/~fpottier/menhir/

HOMEPAGE =		http://cristal.inria.fr/~fpottier/menhir/
CATEGORIES =		devel

# QPLv1/LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes
MAKE_FLAGS =		docdir='${WRKINST}${PREFIX}/share/doc/ocaml-menhir' \
			mandir='${WRKINST}${PREFIX}/man/man1'

NO_TEST =		Yes

.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=		TARGET=byte
.endif

.include <bsd.port.mk>
