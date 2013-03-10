# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:02 espie Exp $

COMMENT=	tools for handling audio-file cue sheets and toc files

DISTNAME=	cuetools-1.3.1
REVISION=	0

CATEGORIES=	audio textproc

HOMEPAGE=	http://developer.berlios.de/projects/cuetools/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_BERLIOS:=cuetools/}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/extras/cuetag.sh ${PREFIX}/bin/cuetag

.include <bsd.port.mk>
