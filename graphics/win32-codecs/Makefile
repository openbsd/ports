# $OpenBSD: Makefile,v 1.11 2004/11/05 15:50:52 robert Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"Huge compilation of Win32 binary codecs"

DISTNAME=	all-20040916
PKGNAME=	${DISTNAME:S,all-,win32-codecs-,g}
CATEGORIES=	graphics

MAINTAINER=	Robert Nagy <robert@openbsd.org>

PERMIT_PACKAGE_CDROM=   "Unsure of codec's license"
PERMIT_PACKAGE_FTP=     "Unsure of codec's license"
PERMIT_DISTFILES_CDROM= "Unsure of codec's license"
PERMIT_DISTFILES_FTP=   "Unsure of codec's license"

MASTER_SITES=	http://www1.mplayerhq.hu/MPlayer/releases/codecs/ \
		http://www2.mplayerhq.hu/MPlayer/releases/codecs/ \
		ftp://mplayerhq.hu/MPlayer/releases/codecs/ \
		ftp://ftp.lug.udel.edu/MPlayer/releases/codecs/
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/${DISTNAME}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIST}/* ${PREFIX}/lib/win32

.include <bsd.port.mk>
