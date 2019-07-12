# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:59 sthen Exp $

COMMENT-main=		draw maps and charts
COMMENT-high=		high resolution coastline data for GMT
COMMENT-full=		full resolution coastline data for GMT

V=			4.1.3
DISTNAME=		GMT$V
PKGNAME-main=		gmt-$V
REVISION-main =		5
PKGNAME-high=		gmt-high-$V
REVISION-high =		1
PKGNAME-full=		gmt-full-$V
REVISION-full =		1
CATEGORIES=		graphics geo

HOMEPAGE=		http://gmt.soest.hawaii.edu/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://ftp.iris.washington.edu/pub/gmt/4/
			
DISTFILES=		GMT$V_src.tar.bz2 \
			GMT$V_man.tar.bz2 \
			GMT$V_share.tar.bz2 \
			GMT4.1_coast.tar.bz2 \
			GMT4.1_high.tar.bz2 \
			GMT4.1_full.tar.bz2

EXTRACT_CASES=		GMT4.1_*.tar.bz2) bzip2 -dc ${FULLDISTDIR}/$$archive | \
				tar xf - -C ${WRKDIST};;

MULTI_PACKAGES=		-main -high -full

LIB_DEPENDS-main=	math/netcdf
WANTLIB-main=		c m netcdf>=1

RUN_DEPENDS-high=	gmt-$V:graphics/gmt
RUN_DEPENDS-full=	gmt-$V:graphics/gmt

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/gmt/share \
			--enable-mansect=1 \
			--enable-netcdf=${LOCALBASE}

NO_TEST=		Yes

ALL_TARGET=		gmt
INSTALL_TARGET=		install install-data install-man

.include <bsd.port.mk>
