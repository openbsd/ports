# $OpenBSD: Makefile,v 1.22 2008/11/12 12:49:42 sthen Exp $

COMMENT=	latency logging and graphing system

DISTNAME=	smokeping-2.3.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}pub/

HOMEPAGE=	http://oss.oetiker.ch/smokeping/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-ldap \
		::devel/p5-Config-Grammar \
		::net/fping \
		::net/p5-Net-DNS \
		::net/p5-Net-Telnet \
		::net/p5-SNMP_Session \
		::security/p5-Authen-Radius \
		::security/p5-Digest-HMAC \
		::www/p5-CGI-SpeedyCGI \
		::www/p5-libwww \
		:p5-RRD-*:net/rrdtool,-perl

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

PMDIR=		libdata/perl5/site_perl
SUBST_VARS=	PMDIR
WWWDIR=		${PREFIX}/share/examples/smokeping

do-install:
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g; \
		s|%%LOCALBASE%%|${LOCALBASE}|g;" \
		${WRKSRC}/etc/config.dist
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g" \
		< ${WRKSRC}/bin/smokeping.dist > ${WRKSRC}/bin/smokeping
	${INSTALL_SCRIPT} ${WRKSRC}/bin/smokeping ${PREFIX}/bin/smokeping
	@perl -pi -e "s|%%SYSCONFDIR%%|${SYSCONFDIR}|g; \
		s|%%LOCALBASE%%|${LOCALBASE}|g" \
		< ${WRKSRC}/htdocs/smokeping.cgi.dist \
		> ${WRKSRC}/htdocs/smokeping.cgi
	${INSTALL_DATA_DIR} ${WWWDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/htdocs/smokeping.cgi ${WWWDIR}
	cd ${WRKSRC}/htdocs/; tar cf - cropper | tar xf - -C ${WWWDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/${PMDIR}/Smokeping
	cd ${WRKSRC}/lib/; tar cf - Smokeping* | \
		tar xf - -C ${PREFIX}/${PMDIR}/
	${INSTALL_MAN} ${WRKSRC}/doc/smokeping*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping/examples
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/smokeping
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* \
		${PREFIX}/share/doc/smokeping/examples
.for dir in matchers probes sorters
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smokeping/${dir}
	${INSTALL_DATA} ${WRKSRC}/doc/Smokeping/${dir}/*.txt \
		${PREFIX}/share/doc/smokeping/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smokeping
.for file in basepage.html config smokemail tmail smokeping_secrets
	${INSTALL_DATA} ${WRKSRC}/etc/${file}.dist \
		${PREFIX}/share/examples/smokeping/${file}
.endfor

.include <bsd.port.mk>
