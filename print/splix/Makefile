# $OpenBSD: Makefile,v 1.25 2019/09/29 13:36:28 ajacoutot Exp $

COMMENT=	CUPS drivers for SPL printers

V=		2.0.1.20130902
DISTNAME=	splix-${V}svn
PKGNAME=	splix-${V}
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/splix
REVISION=	4

CATEGORIES=	print

HOMEPAGE=	http://splix.ap2c.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cups cupsimage jbig85 m

COMPILER=	base-clang ports-gcc base-gcc

# snapshot of SVN (Fedora tarball)
MASTER_SITES=	http://pkgs.fedoraproject.org/repo/pkgs/splix/${DISTNAME}${EXTRACT_SUFX}/2901e9482dd1a7c44f7b730696868e09/
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

LIB_DEPENDS=	print/cups,-libs \
		graphics/jbigkit

# gstoraster
RUN_DEPENDS=	print/cups-filters

USE_GMAKE=	Yes
NO_TEST=	Yes
ALL_TARGET=	drv all

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}" \
		PSTORASTER=gstoraster \
		CUPSDRV=${PREFIX}/share/cups/drv/splix \
		DRV_ONLY=1

.include <bsd.port.mk>
