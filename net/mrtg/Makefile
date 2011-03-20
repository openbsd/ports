# $OpenBSD: Makefile,v 1.77 2011/03/20 06:43:47 ajacoutot Exp $

COMMENT=	multi-router traffic grapher

DISTNAME=	mrtg-2.17.1
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://oss.oetiker.ch/mrtg/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c jpeg m png z gd>=18

MASTER_SITES=	${HOMEPAGE}pub/ \
		${HOMEPAGE}pub/old

RUN_DEPENDS=	net/p5-IO-Socket-INET6 \
		net/p5-Net-SNMP \
		net/p5-SNMP_Session \
		net/rrdtool,-perl
LIB_DEPENDS=	graphics/gd

USE_GROFF =	Yes

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS+=--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

# SUBST_CMD mangles the file
pre-configure:
	@perl -pi -e 's,/etc/mrtg,${SYSCONFDIR}/mrtg,g' ${WRKSRC}/bin/mrtg

post-build:
	cd ${WRKSRC}; ${MAKE_PROGRAM} doc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/* ${PREFIX}/share/mrtg
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rateup ${PREFIX}/bin
	cd ${WRKSRC}/bin; ${INSTALL_SCRIPT} cfgmaker indexmaker mrtg \
	    mrtg-traffic-sum ${PREFIX}/bin
	cd ${WRKSRC}/lib/mrtg2; ${INSTALL_DATA} MRTG_lib.pm Net_SNMP_util.pm \
	    locales_mrtg.pm ${PREFIX}/libdata/perl5/site_perl/
	cd ${WRKSRC}/lib/mrtg2/Pod; ${INSTALL_DATA} *.pm \
	    ${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA} ${WRKSRC}/contrib/mrtgmk/cfg/mrtg.cfg \
	    ${PREFIX}/share/examples/mrtg

.include <bsd.port.mk>
