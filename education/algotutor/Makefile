# $OpenBSD: Makefile,v 1.6 2006/02/10 04:50:06 sturm Exp $

COMMENT=	"interactive tutorial for algorithms and data structures"

DISTNAME=	algotutor-0.8.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/~ckhung/p/algotutor/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.cyut.edu.tw/~ckhung/dl/
EXTRACT_SUFX=	.tgz

RUN_DEPENDS=	:p5-Tk-*:x11/p5-Tk

NO_BUILD=	Yes

P5SITE=		libdata/perl5/site_perl
P5INST=		${PREFIX}/${P5SITE}
SUBST_VARS=	P5SITE

do-configure:
	@perl -i -pe 's@%%P5INST%%@${P5INST}@g' ${WRKSRC}/algotutor

pre-install:
	${INSTALL_DATA_DIR} ${P5INST}/algotutor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/algotutor
	${INSTALL_DATA} ${WRKSRC}/etc/algotutor \
		${PREFIX}/share/examples/algotutor
	${INSTALL_DATA_DIR} ${PREFIX}/share/algotutor
	${INSTALL_SCRIPT} ${WRKSRC}/algotutor ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/gen_at_graph ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/algotutor.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/gen_at_graph.1 ${PREFIX}/man/man1
	cp -R ${WRKSRC}/cgeom ${P5INST}/algotutor
	cp -R ${WRKSRC}/data ${PREFIX}/share/algotutor
	cp -R ${WRKSRC}/dp ${P5INST}/algotutor
	cp -R ${WRKSRC}/graph ${P5INST}/algotutor
	cp ${WRKSRC}/*.pm ${P5INST}/algotutor
	cp ${WRKSRC}/basic.pl ${P5INST}/algotutor
	cp ${WRKSRC}/utilalgo ${P5INST}/algotutor

.include <bsd.port.mk>
