# $OpenBSD: Makefile,v 1.40 2019/07/14 00:39:35 naddy Exp $

COMMENT=	network performance benchmark

GH_ACCOUNT=	HewlettPackard
GH_PROJECT=	netperf
GH_TAGNAME=	netperf-2.7.0
DISTNAME=	netperf-2.7.0-gh
WRKDIST=	${WRKDIR}/netperf-${GH_TAGNAME}
PKGNAME=	${GH_TAGNAME}
REVISION=	3

CATEGORIES=	benchmarks net

HOMEPAGE=	https://hewlettpackard.github.io/netperf/

# "for non-commercial purposes only"; see COPYING
PERMIT_PACKAGE=	Yes

WANTLIB += c m

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
