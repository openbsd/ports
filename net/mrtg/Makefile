# $OpenBSD: Makefile,v 1.32 2000/09/24 07:04:12 brad Exp $

DISTNAME=	mrtg-2.8.12
CATEGORIES=	net
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.ou.edu/mirrors/mrtg/ \
		ftp://ftp.sunet.se/pub/network/monitoring/mrtg/ \
		http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/pub/

HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/mrtg/mrtg.html

LIB_DEPENDS=	gd.18::graphics/gd

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -ljpeg"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/*.png ${PREFIX}/share/mrtg
	${INSTALL_PROGRAM} ${WRKSRC}/run/rateup ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_DATA} *.cfg *.html *.pod *.txt \
		${PREFIX}/share/doc/mrtg
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} cfgmaker cfgmaker_ip \
		indexmaker mrtg ${PREFIX}/bin
	cd ${WRKSRC}/run; ${INSTALL_SCRIPT} locales_mrtg.pm BER.pm \
		SNMP_Session.pm SNMP_util.pm ${PREFIX}/libdata/perl5/site_perl
	${INSTALL_DATA} ${WRKSRC}/doc/sample-mrtg.cfg ${PREFIX}/lib/mrtg/mrtg.cfg.sample

.include <bsd.port.mk>
