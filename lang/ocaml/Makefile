# $OpenBSD: Makefile,v 1.11 2000/05/22 15:41:35 espie Exp $

DISTNAME=	ocaml-3.00
CATEGORIES=	lang
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--tkdefs '-I${PREFIX}/include/tk8.3 -I${PREFIX}/include/tcl8.3'
LIB_DEPENDS=	tcl83.1.3::lang/tcl/8.3 \
		tk83.1.3::x11/tk/8.3

# ocaml's configure script is too smart for its own good

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}
USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/* ${PREFIX}/share/doc/ocaml/html
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc
	@${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/ocaml

.include <bsd.port.mk>
