# $OpenBSD: Makefile,v 1.13 2013/04/07 08:47:33 ajacoutot Exp $

COMMENT=	CUPS drivers for SPL printers

DISTNAME=	splix-2.0.0
EXTRACT_SUFX=	.tar.bz2
REVISION =	8

CATEGORIES=	print

HOMEPAGE=	http://splix.ap2c.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cups cupsimage jbig m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

LIB_DEPENDS=	print/cups,-libs \
		graphics/jbigkit

# gstoraster
RUN_DEPENDS=	print/ghostscript/gnu

# package is only useful if cups is installed
RUN_DEPENDS +=	print/cups

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}" \
		PSTORASTER=gstoraster

.include <bsd.port.mk>
