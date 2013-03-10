# $OpenBSD: Makefile,v 1.5 2013/03/10 22:55:04 espie Exp $

COMMENT=	nsf (Nintendo sound) file player

DISTNAME=	nosefart-2.3-mls
PKGNAME=	nosefart-2.3
REVISION=	0
CATEGORIES=	audio
HOMEPAGE=	http://nosefart.sourceforge.net/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nosefart/}

EXTRACT_SUFX=	.tar.bz2
NO_TEST=	yes

USE_GMAKE=	yes
WANTLIB=	m c sndio

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKDIST}/nsfobj/nosefart ${PREFIX}/bin/


.include <bsd.port.mk>
