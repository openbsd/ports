# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:45 espie Exp $

COMMENT=	rrdtool frontend for Bind installation

DISTNAME=	bindgraph-0.2
CATEGORIES=	net www

HOMEPAGE=	http://www.linux.it/~md/software/

MASTER_SITES= 	${HOMEPAGE}

MAINTAINER=     Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX= 	.tgz

RUN_DEPENDS=	net/rrdtool,-perl \
		devel/p5-File-Tail

NO_TEST=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/bindgraph

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.pl ${PREFIX}/bin/bindgraph
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.cgi ${PREFIX}/lib/bindgraph

.include <bsd.port.mk>
