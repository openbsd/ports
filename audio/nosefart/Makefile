# $OpenBSD: Makefile,v 1.6 2019/05/06 19:36:30 danj Exp $

COMMENT=	nsf (Nintendo sound) file player

DISTNAME=	nosefart-2.3-mls
PKGNAME=	nosefart-2.3
REVISION=	1
CATEGORIES=	audio
HOMEPAGE=	http://nosefart.sourceforge.net/

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
