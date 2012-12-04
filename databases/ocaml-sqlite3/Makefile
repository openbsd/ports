# $OpenBSD: Makefile,v 1.23 2012/12/04 06:53:06 chrisz Exp $

COMMENT=	Objective Caml bindings for SQLite3
CATEGORIES=	databases

V=		2.0.4
NAME =		ocaml-sqlite3
DISTNAME=	sqlite3-ocaml-${V}
PKGNAME=	${NAME}-${V}
EXTRACT_SUFX=	.tar.gz
MASTER_SITES=	https://bitbucket.org/mmottl/sqlite3-ocaml/downloads/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	https://bitbucket.org/mmottl/sqlite3-ocaml/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB =	sqlite3
BUILD_DEPENDS =	sysutils/findlib

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests


.include <bsd.port.mk>
