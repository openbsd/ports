# $OpenBSD: Makefile,v 1.5 1999/11/22 22:08:32 angelos Exp $

DISTNAME=	ocaml-2.03
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.kurims.kyoto-u.ac.jp/pub/lang/caml-light/ \
		ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

MAINTAINER=	angelos@openbsd.org

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${MKDIR} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/* ${PREFIX}/share/doc/ocaml/html
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc

.include <bsd.port.mk>
