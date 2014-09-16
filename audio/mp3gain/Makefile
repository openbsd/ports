# $OpenBSD: Makefile,v 1.5 2014/09/16 12:02:05 sthen Exp $

COMMENT=	audio file volume normalizer

DISTNAME=	mp3gain-1_5_2-src
PKGNAME=	mp3gain-1.5.2
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3gain/}

HOMEPAGE=	http://mp3gain.sourceforge.net/
EXTRACT_SUFX=	.zip

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

ALL_TARGET=		all
USE_GMAKE=		Yes
NO_TEST=		Yes

WRKSRC=$(WRKDIR)

do-configure:
	@true

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/mp3gain ${PREFIX}/bin

.include <bsd.port.mk>
