# $OpenBSD: Makefile,v 1.3 1999/07/09 02:51:11 brad Exp $

DISTNAME=	ocaml-2.02
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.kurims.kyoto-u.ac.jp/pub/lang/caml-light/ \
		ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

MAINTAINER=	kiri@kiri.toba-cmt.ac.jp

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt

DOCFILES=	${DISTNAME}-refman.html.tar.gz

post-install:
	@${MKDIR} ${PREFIX}/share/doc/ocaml/html
	@${INSTALL_DATA} ${WRKDIR}/htmlman/* ${PREFIX}/share/doc/ocaml/html
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc

.include <bsd.port.mk>
