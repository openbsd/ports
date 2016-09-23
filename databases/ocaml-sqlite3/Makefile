# $OpenBSD: Makefile,v 1.30 2016/09/23 09:16:53 sthen Exp $

COMMENT=	Objective Caml bindings for SQLite3
CATEGORIES=	databases

V=		2.0.9
NAME =		ocaml-sqlite3
DISTNAME=	sqlite3-ocaml-${V}
PKGNAME=	${NAME}-${V}
REVISION=	2
MASTER_SITES=	https://github.com/mmottl/sqlite3-ocaml/releases/download/v${V}/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	https://bitbucket.org/mmottl/sqlite3-ocaml/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB =	sqlite3
LIB_DEPENDS =	databases/sqlite3
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

.include <bsd.port.mk>
