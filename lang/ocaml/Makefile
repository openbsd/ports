# $OpenBSD: Makefile,v 1.7 2000/02/10 10:03:19 espie Exp $

DISTNAME=	ocaml-2.04
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

MAINTAINER=	angelos@openbsd.org

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/* ${PREFIX}/share/doc/ocaml/html
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc

.include <bsd.port.mk>
