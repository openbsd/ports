# $OpenBSD: Makefile,v 1.1.1.1 2002/11/10 20:04:49 jakob Exp $

COMMENT=	"latency logging and graphing system"

VERSION=	1.16
DISTNAME=	smokeping-${VERSION}
CATEGORIES=	net

MASTER_SITES=	http://people.ee.ethz.ch/~oetiker/webtools/smokeping/pub/ \
		http://ftp.heanet.ie/mirrors/people.ee.ethz.ch/~oetiker/webtools/smokeping/pub/

HOMEPAGE=	http://people.ee.ethz.ch/~oetiker/webtools/smokeping/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/rrdtool \
		::net/p5-SNMP_Session \
		::net/fping

NO_REGRESS=	Yes
NO_BUILD=	Yes

LIBDIR=		lib/smokeping
PMDIR=		libdata/perl5/site_perl

ETCFILES=	basepage.html config-echoping config smokemail


do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/smokeping.dist \
		${PREFIX}/bin/smokeping
	${INSTALL_DATA_DIR} ${PREFIX}/${LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/htdocs/smokeping.cgi.dist \
		${PREFIX}/${LIBDIR}/smokeping.cgi
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/Smokeping.pm ${PREFIX}/${PMDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/ISG
	${INSTALL_DATA} ${WRKSRC}/lib/ISG/*.pm ${PREFIX}/${PMDIR}/ISG
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/probes
	${INSTALL_DATA} ${WRKSRC}/lib/probes/*.pm ${PREFIX}/${PMDIR}/probes
	${INSTALL_MAN} ${WRKSRC}/doc/smokeping*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smokeping
.for file in ${ETCFILES}
	${INSTALL_DATA} ${WRKSRC}/etc/${file}.dist \
		${PREFIX}/share/examples/smokeping/${file}
.endfor

.include <bsd.port.mk>
