# $OpenBSD: Makefile,v 1.9 1999/04/27 19:25:27 brad Exp $

DISTNAME=	mrtg-2.7.4b
CATEGORIES=	net
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/
HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libgd.a:${PORTSDIR}/graphics/gd

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
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
