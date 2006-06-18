# $OpenBSD: Makefile,v 1.6 2006/06/18 18:05:46 jakob Exp $

COMMENT=	"latency logging and graphing system"

VERSION=	2.0.8
DISTNAME=	smokeping-${VERSION}
PKGNAME=	smokeping-${VERSION}p0
CATEGORIES=	net

MASTER_SITES=	http://people.ee.ethz.ch/~oetiker/webtools/smokeping/pub/

HOMEPAGE=	http://oss.oetiker.ch/smokeping/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Config-Grammar \
		::net/rrdtool \
		::net/p5-SNMP_Session \
		::net/fping \
		::www/p5-CGI-SpeedyCGI

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

PMDIR=		libdata/perl5/site_perl
SUBST_VARS=	PMDIR

ETCFILES=	basepage.html config smokemail tmail

do-install:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g; \
		s|%%LOCALBASE%%|${LOCALBASE}|g;" \
		${WRKSRC}/etc/config.dist
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		< ${WRKSRC}/bin/smokeping.dist > ${WRKSRC}/bin/smokeping
	${INSTALL_SCRIPT} ${WRKSRC}/bin/smokeping ${PREFIX}/bin/smokeping
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		< ${WRKSRC}/htdocs/smokeping.cgi.dist \
		> ${WRKSRC}/htdocs/smokeping.cgi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smokeping
	${INSTALL_SCRIPT} ${WRKSRC}/htdocs/smokeping.cgi \
		${PREFIX}/share/examples/smokeping/smokeping.cgi
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/Smokeping.pm ${PREFIX}/${PMDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/Smokeping
	${INSTALL_DATA} ${WRKSRC}/lib/Smokeping/*.pm \
		${PREFIX}/${PMDIR}/Smokeping
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/Smokeping/matchers
	${INSTALL_DATA} ${WRKSRC}/lib/Smokeping/matchers/*.pm \
		${PREFIX}/${PMDIR}/Smokeping/matchers
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/Smokeping/probes
	${INSTALL_DATA} ${WRKSRC}/lib/Smokeping/probes/*.pm \
		${PREFIX}/${PMDIR}/Smokeping/probes
	${INSTALL_MAN} ${WRKSRC}/doc/smokeping*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping/matchers
	${INSTALL_DATA} ${WRKSRC}/doc/Smokeping/matchers/*.txt \
		${PREFIX}/share/doc/smokeping/matchers
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping/probes
	${INSTALL_DATA} ${WRKSRC}/doc/Smokeping/probes/*.txt \
		${PREFIX}/share/doc/smokeping/probes
.for file in ${ETCFILES}
	${INSTALL_DATA} ${WRKSRC}/etc/${file}.dist \
		${PREFIX}/share/examples/smokeping/${file}
.endfor

.include <bsd.port.mk>
