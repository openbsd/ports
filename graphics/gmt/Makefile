# $OpenBSD: Makefile,v 1.11 2008/10/30 16:48:37 naddy Exp $

COMMENT-main=		draw maps and charts
COMMENT-high=		high resolution coastline data for GMT
COMMENT-full=		full resolution coastline data for GMT

V=			4.1.3
DISTNAME=		GMT$V
PKGNAME-main=		gmt-$Vp2
PKGNAME-high=		gmt-high-$V
PKGNAME-full=		gmt-full-$V
CATEGORIES=		graphics geo

HOMEPAGE=		http://gmt.soest.hawaii.edu/

MAINTAINER=		David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.soest.hawaii.edu/gmt/4/ \
			ftp://falcon.grdl.noaa.gov/pub/gmt/4/ \
			ftp://ftp.iris.washington.edu/pub/gmt/4/ \
			ftp://ftp.geologi.uio.no/pub/gmt/4/ \
			ftp://gd.tuwien.ac.at/pub/gmt/4/
			
DISTFILES=		GMT$V_src.tar.bz2 \
			GMT$V_man.tar.bz2 \
			GMT$V_share.tar.bz2 \
			GMT4.1_coast.tar.bz2 \
			GMT4.1_high.tar.bz2 \
			GMT4.1_full.tar.bz2

EXTRACT_CASES=		GMT4.1_*.tar.bz2) bzip2 -dc ${FULLDISTDIR}/$$archive | \
				tar xf - -C ${WRKDIST};;

MULTI_PACKAGES=		-main -high -full

LIB_DEPENDS-main=	netcdf.>=1::math/netcdf
WANTLIB-main=		c m

RUN_DEPENDS-high=	:gmt-$V:graphics/gmt
RUN_DEPENDS-full=	:gmt-$V:graphics/gmt

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/gmt/share \
			--enable-mansect=1 \
			--enable-netcdf=${LOCALBASE}

NO_REGRESS=		Yes

ALL_TARGET=		gmt
INSTALL_TARGET=		install install-data install-man

.include <bsd.port.mk>
