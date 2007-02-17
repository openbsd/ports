# $OpenBSD: Makefile,v 1.2 2007/02/17 15:55:08 steven Exp $

COMMENT=		"open-source JPEG 2000 codec library"

DISTNAME=		openjpeg_v1_1
PKGNAME=		openjpeg-1.1p1

SHARED_LIBS=		openjpeg	2.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openjpeg.org/

MAINTAINER=		Todd T. Fries <todd@OpenBSD.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MAKE_ENV=		LIBopenjpeg_VERSION=${LIBopenjpeg_VERSION}
MAKE_FLAGS=		CC="${CC}" COMPILERFLAGS="${CFLAGS}"
WRKDIST=		${WRKDIR}/OpenJPEG

NO_REGRESS=		Yes

.include <bsd.port.mk>
