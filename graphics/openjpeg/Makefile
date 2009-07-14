# $OpenBSD: Makefile,v 1.5 2009/07/14 15:35:24 sthen Exp $

COMMENT=		open-source JPEG 2000 codec library

DISTNAME=		openjpeg_v1_3
PKGNAME=		openjpeg-1.3

SHARED_LIBS=		openjpeg	4.0

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
WRKDIST=		${WRKDIR}/${DISTNAME:S/openjpeg/OpenJPEG/}

NO_REGRESS=		Yes

pre-patch:
	cd ${WRKSRC}/libopenjpeg; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
