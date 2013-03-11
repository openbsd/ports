# $OpenBSD: Makefile,v 1.22 2013/03/11 02:52:05 espie Exp $

COMMENT=	Objective Caml bindings for PostgreSQL
CATEGORIES=	databases

V=		2.0.2
REVISION=	0
NAME =		ocaml-postgresql
DISTNAME=	postgresql-ocaml-${V}
PKGNAME=	${NAME}-${V}
MASTER_SITES=	https://bitbucket.org/mmottl/postgresql-ocaml/downloads/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	https://bitbucket.org/mmottl/postgresql-ocaml/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB =	pq
BUILD_DEPENDS =	sysutils/findlib
LIB_DEPENDS=	databases/postgresql

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	${INSTALL_DATA} \
		${FILESDIR}/README ${WRKDIST}/examples/* \
		${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
