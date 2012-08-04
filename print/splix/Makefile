# $OpenBSD: Makefile,v 1.11 2012/08/04 14:57:28 ajacoutot Exp $

COMMENT=	CUPS drivers for SPL printers

DISTNAME=	splix-2.0.0
REVISION =	7
CATEGORIES=	print

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://splix.ap2c.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto cups cupsimage gssapi jbig krb5 m pthread
WANTLIB += ssl stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=splix/}

LIB_DEPENDS=	print/cups,-libs \
		graphics/jbigkit

# gstoraster
RUN_DEPENDS=	print/ghostscript/gnu

# package is only useful if cups is installed
RUN_DEPENDS +=	print/cups

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}" \
		PSTORASTER=gstoraster

.include <bsd.port.mk>
