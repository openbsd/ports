# $OpenBSD: Makefile,v 1.26 2000/03/15 19:20:05 brad Exp $

DISTNAME=	mrtg-2.8.12
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.ou.edu/mirrors/mrtg/ \
		ftp://ftp.sunet.se/pub/network/monitoring/mrtg/ \
		http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

NEED_VERSION=	1.223

HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

LIB_DEPENDS=	gd.18:graphics/gd

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/*.png ${PREFIX}/share/mrtg
	${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_DATA} *.cfg *.html *.pod *.txt \
		${PREFIX}/share/doc/mrtg
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} cfgmaker cfgmaker_ip \
		indexmaker mrtg ${PREFIX}/bin
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} locales_mrtg.pm BER.pm \
		SNMP_Session.pm SNMP_util.pm ${PREFIX}/lib/mrtg
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample

.include <bsd.port.mk>
