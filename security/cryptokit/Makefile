# $OpenBSD: Makefile,v 1.1.1.1 2003/07/21 02:39:46 avsm Exp $

COMMENT=	"cryptographic framework for the Objective-ML language"
CATEGORIES=	security

DISTNAME=	cryptokit-1.2
MASTER_SITES=	http://caml.inria.fr/distrib/bazar-ocaml/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://pauillac.inria.fr/~xleroy/software.html

# GPL 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:ocaml-*:lang/ocaml

OCAML_LIBDIR=	${PREFIX}/lib/ocaml
DOC_DIR=	${PREFIX}/share/doc/cryptokit
MAKE_FLAGS=	CFLAGS="${CFLAGS} -DHAVE_ZLIB"
FAKE_FLAGS=	INSTALLDIR="${DESTDIR}${OCAML_LIBDIR}"

REGRESS_TARGET=	test

do-install:
	${INSTALL_DATA_DIR} ${OCAML_LIBDIR}
	${INSTALL_DATA_DIR} ${DOC_DIR}
.for i in cryptokit.cmi cryptokit.cma cryptokit.mli libcryptokit.a
	${INSTALL_DATA} ${WRKBUILD}/${i} ${OCAML_LIBDIR}
.endfor
	${LOCALBASE}/bin/ocamldoc -html -I ${WRKSRC} -d ${DOC_DIR} ${WRKSRC}/cryptokit.mli

.include <bsd.port.mk>
