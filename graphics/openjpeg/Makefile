# $OpenBSD: Makefile,v 1.1.1.1 2007/02/08 00:29:22 todd Exp $

COMMENT=		"open-source JPEG 2000 codec library"

DISTNAME=		openjpeg_v1_1
PKGNAME=		openjpeg-1.1p0

SHARED_LIBS=		openjpeg	1.0

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
WRKDIST=		${WRKDIR}/OpenJPEG

.include <bsd.port.mk>
