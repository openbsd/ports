# $OpenBSD: Makefile,v 1.20 2000/02/15 05:04:56 turan Exp $

DISTNAME=	mrtg-2.8.11
CATEGORIES=	net
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

LIB_DEPENDS=	gd.17:${PORTSDIR}/graphics/gd

GNU_CONFIGURE=  yes
CONFIGURE_ARGS=	--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/*.gif ${PREFIX}/share/mrtg
	${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} cfgmaker cfgmaker_ip \
		indexmaker mrtg ${PREFIX}/bin
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} locales_mrtg.pm BER.pm \
		SNMP_Session.pm SNMP_util.pm ${PREFIX}/lib/mrtg
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
