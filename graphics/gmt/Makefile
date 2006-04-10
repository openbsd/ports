# $OpenBSD: Makefile,v 1.3 2006/04/10 20:43:01 sturm Exp $

COMMENT=		"draw maps and charts"

V=			4.1.1
DISTNAME=		GMT${V}
PKGNAME=		gmt-${V}
CATEGORIES=		graphics

HOMEPAGE=		http://gmt.soest.hawaii.edu/

MAINTAINER=		David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		netcdf.1::math/netcdf

WANTLIB=		c m

MASTER_SITES=		ftp://ftp.soest.hawaii.edu/gmt/4/ \
			ftp://falcon.grdl.noaa.gov/pub/gmt/4/ \
			ftp://ftp.iris.washington.edu/pub/gmt/4/ \
			ftp://ftp.geologi.uio.no/pub/gmt/4/ \
			ftp://gd.tuwien.ac.at/pub/gmt/4/
			
DISTFILES=		GMT4.1.1_progs.tar.bz2 \
			GMT4.1.1_man.tar.bz2 \
			GMT4_share.tar.bz2 

SUPDISTFILES=		GMT4_high.tar.bz2 \
			GMT4_full.tar.bz2

DIST_SUBDIR=		${PKGNAME}
EXTRACT_CASES=		GMT4_*.tar.bz2) bzip2 -dc ${FULLDISTDIR}/$$archive | \
				tar xf - -C ${WRKDIST};;

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/gmt/share \
			--enable-mansect=1 \
			--enable-netcdf=${LOCALBASE}


FLAVORS=		high full
FLAVOR?=

.if ${FLAVOR:L:Mhigh}
DISTFILES+=		GMT4_high.tar.bz2
.endif
.if ${FLAVOR:L:Mfull}
DISTFILES+=		GMT4_full.tar.bz2
.endif

NO_REGRESS=		Yes

ALL_TARGET=		gmt
INSTALL_TARGET=		install install-data install-man

.include <bsd.port.mk>
