# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:07 sthen Exp $

COMMENT=	interactive tutorial for algorithms and data structures

DISTNAME=	algotutor-0.8.6
REVISION=	1
CATEGORIES=	education math

HOMEPAGE=	http://people.ofset.org/~ckhung/p/algotutor/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://people.ofset.org/~ckhung/dl/
EXTRACT_SUFX=	.tgz

RUN_DEPENDS=	x11/p5-Tk

NO_BUILD=	Yes

P5SITE=		libdata/perl5/site_perl
P5INST=		${PREFIX}/${P5SITE}
SUBST_VARS=	P5SITE

DOCS=	ChangeLog gpl.html

do-configure:
	${SUBST_CMD} ${WRKSRC}/algotutor

do-install:
	${INSTALL_DATA_DIR} ${P5INST}/algotutor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/algotutor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/algotutor
	${INSTALL_DATA} ${WRKSRC}/etc/algotutor \
		${PREFIX}/share/examples/algotutor
	${INSTALL_DATA_DIR} ${PREFIX}/share/algotutor
	${INSTALL_SCRIPT} ${WRKSRC}/algotutor ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/gen_at_graph ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/algotutor.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/gen_at_graph.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/*.{php,png,css} \
		${PREFIX}/share/doc/algotutor
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/algotutor
	cp -R ${WRKSRC}/cgeom ${P5INST}/algotutor
	cp -R ${WRKSRC}/data ${PREFIX}/share/algotutor
	cp -R ${WRKSRC}/dp ${P5INST}/algotutor
	cp -R ${WRKSRC}/graph ${P5INST}/algotutor
	cp ${WRKSRC}/*.pm ${P5INST}/algotutor
	cp ${WRKSRC}/basic.pl ${P5INST}/algotutor
	cp ${WRKSRC}/utilalgo ${P5INST}/algotutor

.include <bsd.port.mk>
