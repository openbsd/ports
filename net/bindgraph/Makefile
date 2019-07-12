# $OpenBSD: Makefile,v 1.5 2019/07/12 20:47:59 sthen Exp $

COMMENT=	rrdtool frontend for Bind installation

DISTNAME=	bindgraph-0.2
REVISION=	0
CATEGORIES=	net www

HOMEPAGE=	http://www.linux.it/~md/software/

MASTER_SITES= 	${HOMEPAGE}

MAINTAINER=     Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX= 	.tgz

RUN_DEPENDS=	net/rrdtool \
		devel/p5-File-Tail

NO_TEST=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/bindgraph

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.pl ${PREFIX}/bin/bindgraph
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.cgi ${PREFIX}/lib/bindgraph

.include <bsd.port.mk>
