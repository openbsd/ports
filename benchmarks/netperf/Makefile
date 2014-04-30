# $OpenBSD: Makefile,v 1.33 2014/04/30 14:01:29 naddy Exp $

COMMENT=	network performance benchmark

DISTNAME=	netperf-2.6.0
REVISION=	1

CATEGORIES=	benchmarks net

HOMEPAGE=	http://www.netperf.org/netperf/

# "for non-commercial purposes only"; see COPYING
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m

MASTER_SITES=	ftp://ftp.netperf.org/netperf/ \
		ftp://ftp.netperf.org/netperf/archive/

AUTOCONF_VERSION= 2.67
CONFIGURE_STYLE=  autoconf
CONFIGURE_ARGS=   --enable-demo
SEPARATE_BUILD=	  Yes

E=	${PREFIX}/share/examples/netperf

post-install:
	${INSTALL_DATA_DIR} $E
	${INSTALL_SCRIPT} ${WRKSRC}/doc/examples/*script $E
	perl -pi -e 's,(/opt/netperf2/bin|/usr/local/bin|/opt/netperf/netperf),${TRUEPREFIX}/bin,;' \
	    -e 's,^NETHOME=.*,NETHOME=${TRUEPREFIX}/bin,;' $E/*

.include <bsd.port.mk>
