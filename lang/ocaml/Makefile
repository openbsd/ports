# OpenBSD makefile for:	Objective Caml
# Version required:	2.01
# Date created:		December 12, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/02/13 04:20:08 angelos Exp $
#

DISTNAME=	ocaml-2.01
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.kurims.kyoto-u.ac.jp/pub/lang/caml-light/ \
		ftp://ftp.inria.fr/lang/caml-light/
DISTFILES=	${DISTNAME}.tar.gz ${DOCFILES}

MAINTAINER=	kiri@kiri.toba-cmt.ac.jp

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	world bootstrap opt
MAN1=		ocaml.1 ocamlc.1 ocamlcp.1 ocamldep.1 ocamllex.1 \
		ocamlopt.1 ocamlprof.1 ocamlrun.1 ocamlyacc.1

.if !defined(NOPORTDOCS)
DOCFILES=	${DISTNAME}-refman.html.tar.gz
.endif

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/ocaml/html
	cd ${WRKDIR}/htmlman; ${INSTALL_DATA} * ${PREFIX}/share/doc/ocaml/html
.endif
	@strip ${PREFIX}/bin/ocamlrun ${PREFIX}/bin/ocamlyacc

.include <bsd.port.mk>
