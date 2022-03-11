COMMENT=	multi-router traffic grapher

DISTNAME=	mrtg-2.17.10

CATEGORIES=	net

HOMEPAGE=	https://oss.oetiker.ch/mrtg/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c jpeg m png z gd>=18

MASTER_SITES=	${HOMEPAGE}pub/ \
		${HOMEPAGE}pub/old/

RUN_DEPENDS=	net/p5-IO-Socket-INET6 \
		net/p5-Net-SNMP \
		net/p5-SNMP_Session \
		net/rrdtool \
		textproc/p5-Pod-Parser
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

post-install:
	# use same location as old versions, to save churn in case anyone
	# is pointing directly at them
	mv ${PREFIX}/share/mrtg2/icons ${PREFIX}/share/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/favicon.ico ${PREFIX}/share/mrtg
	rmdir ${PREFIX}/share/mrtg2

	# docs are mostly just formatted copies of the manpages
	rm -r ${PREFIX}/share/doc/mrtg2 ${PREFIX}/lib/mrtg2/Pod

	# courtesy symlink for ease of finding
	ln -s ../man1/mrtg-reference.1 ${PREFIX}/man/man5/mrtg.cfg.5

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mrtg
	${INSTALL_DATA} ${WRKSRC}/contrib/mrtgmk/cfg/mrtg.cfg \
	    ${PREFIX}/share/examples/mrtg

	# we use p5-SNMP_Session from the separate port
	cd ${PREFIX}/lib/mrtg2; rm BER.pm SNMP_Session.pm SNMP_util.pm

.include <bsd.port.mk>
