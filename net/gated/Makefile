# $OpenBSD: Makefile,v 1.16 2002/12/29 21:14:11 fgsch Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"routing protocol daemon"

DISTNAME=	gated-3-6
PKGNAME=	gated-3.6
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.gated.merit.edu/net-research/gated/ \
   		ftp://ftp.funet.fi/pub/mirrors/ftp.gated.merit.edu/research.and.development/gated/

HOMEPAGE=	http://www.gated.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

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
	@cd ${WRKBUILD} && ${MAKE_PROGRAM} depend

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/gdc/gdc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/src/ospf_monitor/ospf_monitor ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/src/ripquery/ripquery ${PREFIX}/bin

.include <bsd.port.mk>
