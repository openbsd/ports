# $OpenBSD: Makefile,v 1.25 2014/08/22 22:21:53 kili Exp $

COMMENT=	Objective Caml bindings for SQLite3
CATEGORIES=	databases

V=		2.0.4
NAME =		ocaml-sqlite3
DISTNAME=	sqlite3-ocaml-${V}
PKGNAME=	${NAME}-${V}
REVISION=	0
EXTRACT_SUFX=	.tar.gz
MASTER_SITES=	https://bitbucket.org/mmottl/sqlite3-ocaml/downloads/

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
