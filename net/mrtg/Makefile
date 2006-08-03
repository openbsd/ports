# $OpenBSD: Makefile,v 1.50 2006/08/03 23:15:58 espie Exp $

COMMENT=	"multi-router traffic grapher"

DISTNAME=	mrtg-2.12.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}pub/

HOMEPAGE=	http://people.ee.ethz.ch/~oetiker/webtools/mrtg/

LIB_DEPENDS=	gd.>=18::graphics/gd

RUN_DEPENDS=	::net/p5-SNMP_Session \
		::textproc/p5-Pod-Simple

MODULES=	converters/libiconv

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m png jpeg z

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ARGS=	--with-gd-inc="${LOCALBASE}/include" \
		--with-gd-lib="${LOCALBASE}/lib" \
		--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA_DIR} ${PREFIX}/share/mrtg
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mrtg
	${INSTALL_DATA} ${WRKSRC}/images/* ${PREFIX}/share/mrtg
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rateup ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_DATA} *.html *.pod *.txt *.png *.wml \
		${PREFIX}/share/doc/mrtg
	cd ${WRKSRC}/bin; ${INSTALL_SCRIPT} cfgmaker indexmaker mrtg \
		${PREFIX}/bin
	cd ${WRKSRC}/lib/mrtg2; ${INSTALL_DATA} MRTG_lib.pm locales_mrtg.pm \
		${PREFIX}/libdata/perl5/site_perl/
	cd ${WRKSRC}/lib/mrtg2/Pod; ${INSTALL_DATA} *.pm \
		${PREFIX}/libdata/perl5/site_perl/Pod
	${INSTALL_DATA} ${WRKSRC}/contrib/mrtgmk/cfg/mrtg.cfg \
		${PREFIX}/share/examples/mrtg

.include <bsd.port.mk>
