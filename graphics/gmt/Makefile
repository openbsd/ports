# $OpenBSD: Makefile,v 1.2 2006/03/31 16:50:44 sturm Exp $

COMMENT=		"draw maps and charts"

DISTNAME=		GMT4.0
PKGNAME=		gmt-4.0
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

MASTER_SITES=		ftp://gmt.soest.hawaii.edu/pub/gmt/4/ \
			ftp://falcon.grdl.noaa.gov/pub/gmt/4/ \
			ftp://ftp.iris.washington.edu/pub/gmt/4/ \
			ftp://ftp.iag.usp.br/pub/gmt/4/ \
			ftp://ftp.geologi.uio.no/pub/gmt/4/ \
			ftp://gd.tuwien.ac.at/pub/gmt/4/ \
			ftp://life.csu.edu.au/pub/gmt/4/
			
DISTFILES=		GMT4.0_progs.tar.bz2 \
			GMT4.0_man.tar.bz2 \
			GMT_share.tar.bz2 

SUPDISTFILES=		GMT_high.tar.bz2 \
			GMT_full.tar.bz2

EXTRACT_CASES=		GMT_*tar.bz2) cd ${WRKDIR}/${DISTNAME}; \
			bzip2 -dc ${FULLDISTDIR}/$$archive | tar xf -; \
			cd ${WRKDIR};;

MAKE_ENV+=		NETCDFHOME="${LOCALBASE}"

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS+=	--prefix=${WRKINST}${LOCALBASE} \
			--datadir=${WRKINST}${LOCALBASE}/share/gmt/share \
			--enable-mansect=1

CONFIGURE_ENV+=		NETCDFHOME="${LOCALBASE}"

FLAVORS=		high full
FLAVOR?=

.if ${FLAVOR:L:Mhigh}
DISTFILES+=		GMT_high.tar.bz2
.endif
.if ${FLAVOR:L:Mfull}
DISTFILES+=		GMT_full.tar.bz2
.endif

NO_REGRESS=		Yes

INSTALL_TARGET=		install-all

pre-configure:
	@cd ${WRKSRC}/src && \
		perl -pi -e "s,\@prefix\@,${PREFIX},g" GMT.in

.include <bsd.port.mk>
