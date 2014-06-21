# $OpenBSD: Makefile,v 1.4 2014/06/21 11:23:58 jasper Exp $

COMMENT=	tools for handling audio-file cue sheets and toc files

DISTNAME=	cuetools-1.3.1
REVISION=	1

CATEGORIES=	audio textproc

HOMEPAGE=	http://www.cuetools.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

# XXX: When updating, MASTER_SITES= ${HOMEPAGE}/install/
MASTER_SITES=	http://distfiles.nl/

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/extras/cuetag.sh ${PREFIX}/bin/cuetag

.include <bsd.port.mk>
