# $OpenBSD: Makefile,v 1.21 2009/05/30 19:05:31 dhill Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	Huge compilation of Win32 binary codecs
DATE=		20071007
DATE2=		20050115

DISTNAME=	win32-codecs-${DATE}
DISTFILES=	all-${DATE}.tar.bz2 rp9codecs-win32-${DATE2}.tar.bz2
CATEGORIES=	graphics

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=   Unsure of codec's license
PERMIT_PACKAGE_FTP=     Unsure of codec's license
PERMIT_DISTFILES_CDROM= Unsure of codec's license
PERMIT_DISTFILES_FTP=   Unsure of codec's license

MASTER_SITES=	http://www1.mplayerhq.hu/MPlayer/releases/codecs/ \
		http://www2.mplayerhq.hu/MPlayer/releases/codecs/ \
		ftp://mplayerhq.hu/MPlayer/releases/codecs/ \
		ftp://ftp.lug.udel.edu/MPlayer/releases/codecs/

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIST}/all-${DATE}/* ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIST}/rp9codecs-win32-${DATE2}/* ${PREFIX}/lib/win32

.include <bsd.port.mk>
