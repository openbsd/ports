# $OpenBSD: Makefile,v 1.6 1999/03/31 23:25:50 brad Exp $

DISTNAME=	mrtg-2.7.2
CATEGORIES=	net
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

BUILD_DEPENDS=	${PREFIX}/lib/libgd.a:${PORTSDIR}/graphics/gd

USE_PERL5=	yes

GNU_CONFIGURE=  yes
CONFIGURE_ARGS=	--with-gd-lib=${PREFIX}/lib --with-gd-inc=${PREFIX}/include/gd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	for file in ${WRKSRC}/doc/*; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/mrtg; \
	done
	for file in ${WRKSRC}/images/*.gif; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/mrtg; \
	done
	${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/run/cfgmaker ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/run/indexmaker ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/run/mrtg ${PREFIX}/bin
	${MKDIR} ${PREFIX}/lib/mrtg
	${INSTALL_SCRIPT} ${WRKSRC}/run/BER.pm ${PREFIX}/lib/mrtg
	${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_Session.pm ${PREFIX}/lib/mrtg
	${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_util.pm ${PREFIX}/lib/mrtg
	cp ${PREFIX}/lib/mrtg/BER.pm /usr/lib/perl5/site_perl
	cp ${PREFIX}/lib/mrtg/SNMP_Session.pm /usr/lib/perl5/site_perl
	cp ${PREFIX}/lib/mrtg/SNMP_util.pm /usr/lib/perl5/site_perl
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample
	@${ECHO} ""
	@${ECHO} "*** The latest sample config file"
	@${ECHO} "*** can be found ${PREFIX}/lib/mrtg"
	@if [ -f /etc/mrtg.cfg ]; then \
	  ${ECHO} "*** Your /etc/mrtg.cfg has NOT been changed"; \
	 else \
	  cp ${PREFIX}/lib/mrtg/mrtg.cfg.sample /etc/mrtg.cfg; \
	  ${ECHO} "*** mrtg.cfg has been copied into /etc"; \
	fi
	@${ECHO} ""

.include <bsd.port.mk>
