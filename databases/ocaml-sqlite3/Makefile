# $OpenBSD: Makefile,v 1.9 2007/08/07 18:58:17 kurt Exp $

COMMENT=	"Objective Caml bindings for SQLite3"
CATEGORIES=	databases

V=		0.2.0
DISTNAME=	ocaml-sqlite3-${V}
PKGNAME=	${DISTNAME}p5
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	http://metamatix.org/~ocaml/
WRKDIST=	${WRKDIR}/ocaml-sqlite3

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://metamatix.org/~ocaml/ocaml_sqlite3.html

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS= 	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.59
ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,opt,:S,No,,}
USE_GMAKE=	Yes

CONFIGURE_ENV=	CFLAGG="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib -L."
CONFIGURE_ARGS=	--with-sqlite3=${LOCALBASE}
LIB_DEPENDS=	sqlite3.>=8::databases/sqlite3

BUILD_DEPENDS=	::sysutils/findlib
RUN_DEPENDS=	::sysutils/findlib

SQOCAMLDIR=	${PREFIX}/lib/ocaml/site-lib/sqlite3

BYTECODE_FILES=	META sqlite3.cma sqlite3.cmi sqlite3.mli
NATIVE_FILES=	libsqlite3.a sqlite3.a sqlite3.cmx sqlite3.cmxa
INST_FILES=	${BYTECODE_FILES} ${MODOCAML_NATIVE:S,Yes,${NATIVE_FILES},:S,No,,}

do-install:
	${INSTALL_DATA_DIR} ${SQOCAMLDIR}
	cd ${WRKBUILD} && ${INSTALL_DATA} ${INST_FILES} ${SQOCAMLDIR}

.include <bsd.port.mk>
