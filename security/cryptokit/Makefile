# $OpenBSD: Makefile,v 1.7 2009/04/03 21:30:50 sturm Exp $

COMMENT=	cryptographic framework for the Objective-ML language
CATEGORIES=	security

DISTNAME=	cryptokit-1.3
PKGNAME=	${DISTNAME}p1
MASTER_SITES=	http://caml.inria.fr/distrib/bazar-ocaml/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://pauillac.inria.fr/~xleroy/software.html

# GPL 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/ocaml

OCAML_LIBDIR=	${PREFIX}/lib/ocaml
DOC_DIR=	${PREFIX}/share/doc/cryptokit
MAKE_FLAGS=	CFLAGS="${CFLAGS} -DHAVE_ZLIB"
FAKE_FLAGS=	INSTALLDIR="${DESTDIR}${OCAML_LIBDIR}"

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,allopt,:S,No,,}

REGRESS_TARGET=	test

pre-install:
	${INSTALL_DATA_DIR} ${OCAML_LIBDIR}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${LOCALBASE}/bin/ocamldoc -html -I ${WRKSRC} -d ${DOC_DIR} ${WRKSRC}/cryptokit.mli

.include <bsd.port.mk>
