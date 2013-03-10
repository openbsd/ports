# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:03 espie Exp $

COMMENT=	audio file volume normalizer

DISTNAME=	mp3gain-1_4_6-src
PKGNAME=	mp3gain-1.4.6
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3gain/}

HOMEPAGE=	http://mp3gain.sourceforge.net/
EXTRACT_SUFX=	.zip

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

ALL_TARGET=		all
USE_GMAKE=		Yes
NO_TEST=		Yes

WRKSRC=$(WRKDIR)

do-configure:
	@true

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/mp3gain ${PREFIX}/bin

.include <bsd.port.mk>
