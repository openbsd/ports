# $OpenBSD: Makefile,v 1.2 2010/11/19 22:31:32 espie Exp $

COMMENT=	rrdtool frontend for Bind installation

DISTNAME=	bindgraph-0.2
CATEGORIES=	net www

HOMEPAGE=	http://www.linux.it/~md/software/

MASTER_SITES= 	${HOMEPAGE}

MAINTAINER=     Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX= 	.tgz

RUN_DEPENDS=	net/rrdtool,-perl \
		devel/p5-File-Tail

NO_REGRESS=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/bindgraph

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.pl ${PREFIX}/bin/bindgraph
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bindgraph.cgi ${PREFIX}/lib/bindgraph

.include <bsd.port.mk>
