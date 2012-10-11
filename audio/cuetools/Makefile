# $OpenBSD: Makefile,v 1.2 2012/10/11 14:37:04 sthen Exp $

COMMENT=	tools for handling audio-file cue sheets and toc files

DISTNAME=	cuetools-1.3.1
REVISION=	0

CATEGORIES=	audio textproc

HOMEPAGE=	http://developer.berlios.de/projects/cuetools/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_BERLIOS:=cuetools/}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/extras/cuetag.sh ${PREFIX}/bin/cuetag

.include <bsd.port.mk>
