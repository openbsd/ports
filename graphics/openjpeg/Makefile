# $OpenBSD: Makefile,v 1.4 2007/12/03 00:36:44 todd Exp $

COMMENT=		open-source JPEG 2000 codec library

DISTNAME=		openjpeg_v1_2
PKGNAME=		openjpeg-1.2

SHARED_LIBS=		openjpeg	3.0

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
WRKDIST=		${WRKDIR}/trunk

NO_REGRESS=		Yes

.include <bsd.port.mk>
