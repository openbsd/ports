# $OpenBSD: Makefile,v 1.5 1999/03/28 19:25:39 brad Exp $

DISTNAME=	mrtg-2.7.2
CATEGORIES=	net
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

BUILD_DEPENDS=	${PREFIX}/lib/libgd.a:${PORTSDIR}/graphics/gd

USE_PERL5=	YES

SYSCONFDIR=	/etc/mrtg
GNU_CONFIGURE=  yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} --with-gd-lib=${PREFIX}/lib \
		--with-gd-inc=${PREFIX}/include/gd

do-install:
	${INSTALL_DATA_DIR} /etc/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	for file in ${WRKSRC}/doc/*; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/mrtg/; \
	done
	for file in ${WRKSRC}/images/*.gif; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/mrtg/; \
	done
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg /etc/mrtg/
	${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/run/cfgmaker ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/run/indexmaker ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/run/mrtg ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/run/BER.pm /usr/lib/perl5/site_perl/
	${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_Session.pm /usr/lib/perl5/site_perl/
	${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_util.pm /usr/lib/perl5/site_perl/

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Finished installing mrtg."
	@${ECHO} "*** Please create a MRTG config file in /etc/mrtg, take a look at the sample"
	@${ECHO} "*** config in /etc/mrtg or use cfgmaker to automatically generate a config."
	@${ECHO} "***"

.include <bsd.port.mk>
