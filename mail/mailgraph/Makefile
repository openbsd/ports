# $OpenBSD: Makefile,v 1.1.1.1 2004/07/30 09:01:11 jakob Exp $

COMMENT=	"a RRDtool frontend for Postfix statistics"

VERSION=	1.9
DISTNAME=	mailgraph-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://people.ee.ethz.ch/~dws/software/mailgraph/pub/

HOMEPAGE=	http://people.ee.ethz.ch/~dws/software/mailgraph/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/rrdtool \
		::devel/p5-File-Tail

NO_REGRESS=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/mailgraph

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mailgraph.pl ${PREFIX}/bin/mailgraph
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/mailgraph.cgi ${PREFIX}/lib/mailgraph

.include <bsd.port.mk>
