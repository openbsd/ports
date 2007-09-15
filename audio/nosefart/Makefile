# $OpenBSD: Makefile,v 1.2 2007/09/15 21:26:02 simon Exp $

COMMENT=	nsf (Nintendo sound) file player

DISTNAME=	nosefart-2.3-mls
PKGNAME=	nosefart-2.3
CATEGORIES=	audio
HOMEPAGE=	http://nosefart.sourceforge.net/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nosefart/}

EXTRACT_SUFX=	.tar.bz2
NO_REGRESS=	yes

USE_GMAKE=	yes
WANTLIB=	m c ossaudio

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKDIST}/nsfobj/nosefart ${PREFIX}/bin/


.include <bsd.port.mk>
