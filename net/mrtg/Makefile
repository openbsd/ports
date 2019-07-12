# $OpenBSD: Makefile,v 1.93 2019/07/12 20:48:32 sthen Exp $

COMMENT=	multi-router traffic grapher

DISTNAME=	mrtg-2.17.7
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://oss.oetiker.ch/mrtg/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c jpeg m png z gd>=18

MASTER_SITES=	${HOMEPAGE}pub/ \
		${HOMEPAGE}pub/old/

BUILD_DEPENDS=	textproc/groff
RUN_DEPENDS=	net/p5-IO-Socket-INET6 \
		net/p5-Net-SNMP \
		net/p5-SNMP_Session \
		net/rrdtool
LIB_DEPENDS=	graphics/gd

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+=--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib ${LDFLAGS}"

NO_TEST=	Yes

# SUBST_CMD mangles the file
pre-configure:
	sed -i 's,/etc/mrtg,${SYSCONFDIR}/mrtg,g' ${WRKSRC}/bin/mrtg

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
	ln -s ../man1/mrtg-reference.1 ${PREFIX}/man/man5/mrtg.cfg.5

.include <bsd.port.mk>
