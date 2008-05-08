# $OpenBSD: Makefile,v 1.8 2008/05/08 22:44:13 espie Exp $

COMMENT=	RRDtool frontend for Postfix statistics

DISTNAME=	mailgraph-1.14
CATEGORIES=	net mail

MASTER_SITES=	${HOMEPAGE}/pub/ \
		${HOMEPAGE}/pub/old/

HOMEPAGE=	http://mailgraph.schweikert.ch

MAINTAINER=     Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-RRD-*:net/rrdtool,-perl \
		::devel/p5-File-Tail

NO_REGRESS=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/mailgraph

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mailgraph.pl ${PREFIX}/bin/mailgraph
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/mailgraph.cgi ${PREFIX}/lib/mailgraph
	${INSTALL_DATA} ${WRKSRC}/mailgraph.css ${PREFIX}/lib/mailgraph

.include <bsd.port.mk>
