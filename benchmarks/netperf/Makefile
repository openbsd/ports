# $OpenBSD: Makefile,v 1.36 2017/04/19 23:44:13 jca Exp $

COMMENT=	network performance benchmark

DISTNAME=	netperf-2.7.0
REVISION=	1

CATEGORIES=	benchmarks net

HOMEPAGE=	http://www.netperf.org/netperf/

# "for non-commercial purposes only"; see COPYING
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m

MASTER_SITES=	ftp://ftp.netperf.org/netperf/ \
		ftp://ftp.netperf.org/netperf/archive/

AUTOCONF_VERSION= 2.68
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
