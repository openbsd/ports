# $OpenBSD: Makefile,v 1.34 2001/02/17 22:22:45 brad Exp $

DISTNAME=	mrtg-2.9.8
CATEGORIES=	net
NEED_VERSION=	1.336
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/*.png ${PREFIX}/share/mrtg
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rateup ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_DATA} *.html *.pod *.txt \
		${PREFIX}/share/doc/mrtg
	cd ${WRKSRC}/bin; ${INSTALL_SCRIPT} cfgmaker indexmaker mrtg \
		${PREFIX}/bin
	cd ${WRKSRC}/lib/mrtg2; ${INSTALL_DATA} *.pm \
		${PREFIX}/libdata/perl5/site_perl
	cd ${WRKSRC}/lib/mrtg2/Pod; ${INSTALL_DATA} *.pm \
		${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA} ${WRKSRC}/contrib/mrtgmk/cfg/mrtg.cfg \
		${PREFIX}/share/examples/mrtg/mrtg.cfg.sample

.include <bsd.port.mk>
