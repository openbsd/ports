# $OpenBSD: Makefile,v 1.11 2000/08/15 17:12:36 jakob Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	gated-3-6
PKGNAME=	gated-3.6
CATEGORIES=	net
NEED_VERSION=	1.308
MASTER_SITES=	ftp://ftp.gated.merit.edu/net-research/gated/

HOMEPAGE=	http://www.gated.org/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/gated-public-3_6

FLAVORS=snmp gii
FLAVOR?=

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--enable-smux
.else
CONFIGURE_ARGS+=	--disable-smux
.endif

.if ${FLAVOR:L:Mgii}
CONFIGURE_ARGS+=	--enable-gii
.else
CONFIGURE_ARGS+=	--disable-gii
.endif

CONFIGURE_STYLE=	autoconf
SEPARATE_BUILD=		Yes

pre-build:
	cd ${WRKBUILD} && make depend

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/gdc/gdc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/src/ospf_monitor/ospf_monitor ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/src/ripquery/ripquery ${PREFIX}/bin

.include <bsd.port.mk>
