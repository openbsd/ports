# $OpenBSD: Makefile,v 1.10 1999/07/26 01:25:21 brad Exp $

DISTNAME=	mrtg-2.8.5
CATEGORIES=	net
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png \
		gd.1.6:${PORTSDIR}/graphics/gd

GNU_CONFIGURE=  yes
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	@${MKDIR} ${PREFIX}/share/mrtg
	@${MKDIR} ${PREFIX}/share/doc/mrtg
	@${MKDIR} ${PREFIX}/lib/mrtg

	@for file in ${WRKSRC}/doc/*; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/doc/mrtg; \
	done
	@for file in ${WRKSRC}/images/*.gif; do \
		${INSTALL_DATA} $$file ${PREFIX}/share/mrtg; \
	done
	@${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/run/cfgmaker ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/run/cfgmaker_ip ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/run/indexmaker ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/run/mrtg ${PREFIX}/bin
	@${INSTALL_SCRIPT} ${WRKSRC}/run/locales_mrtg.pm ${PREFIX}/lib/mrtg
	@${INSTALL_SCRIPT} ${WRKSRC}/run/BER.pm ${PREFIX}/lib/mrtg
	@${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_Session.pm ${PREFIX}/lib/mrtg
	@${INSTALL_SCRIPT} ${WRKSRC}/run/SNMP_util.pm ${PREFIX}/lib/mrtg
	@${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
