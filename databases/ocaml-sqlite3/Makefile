# $OpenBSD: Makefile,v 1.26 2015/08/30 15:50:24 avsm Exp $

COMMENT=	Objective Caml bindings for SQLite3
CATEGORIES=	databases

V=		2.0.9
NAME =		ocaml-sqlite3
DISTNAME=	sqlite3-ocaml-${V}
PKGNAME=	${NAME}-${V}
EXTRACT_SUFX=	.tar.gz
MASTER_SITES=	https://github.com/mmottl/sqlite3-ocaml/releases/download/v${V}/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	https://bitbucket.org/mmottl/sqlite3-ocaml/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB =	sqlite3
BUILD_DEPENDS =	sysutils/findlib

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests


.include <bsd.port.mk>
