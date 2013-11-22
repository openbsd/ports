# $OpenBSD: Makefile,v 1.17 2013/11/22 08:09:16 ajacoutot Exp $

COMMENT=	CUPS drivers for SPL printers

V=		2.0.1.20130902
DISTNAME=	splix-${V}svn
PKGNAME=	splix-${V}
EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/splix

CATEGORIES=	print

HOMEPAGE=	http://splix.ap2c.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cups cupsimage jbig85 m pthread stdc++

# snapshot of SVN (Fedora tarball)
MASTER_SITES=	http://pkgs.fedoraproject.org/repo/pkgs/splix/${DISTNAME}${EXTRACT_SUFX}/2901e9482dd1a7c44f7b730696868e09/
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

LIB_DEPENDS=	print/cups,-libs \
		graphics/jbigkit

# gstoraster
RUN_DEPENDS=	print/cups-filters

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}" \
		PSTORASTER=gstoraster

.include <bsd.port.mk>
