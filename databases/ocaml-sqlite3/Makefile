# $OpenBSD: Makefile,v 1.1.1.1 2006/06/01 01:20:25 avsm Exp $

COMMENT=	"Objective Caml bindings for SQLite3"
CATEGORIES=	databases

V=		0.2.0
DISTNAME=	ocaml-sqlite3-${V}
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	http://metamatix.org/~ocaml/
WRKDIST=	${WRKDIR}/ocaml-sqlite3

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://metamatix.org/~ocaml/ocaml-sqlite3.html

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS= 	Yes
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,opt,:S,No,,}
USE_GMAKE=	Yes

CONFIGURE_ENV=	CFLAGG="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib -L."
CONFIGURE_ARGS=	--with-sqlite3=${LOCALBASE}
LIB_DEPENDS=	sqlite3.8::databases/sqlite3

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib

.include <bsd.port.mk>
