# $OpenBSD: Makefile,v 1.5 2003/05/26 16:52:18 espie Exp $

ONLY_FOR_ARCHS=	i386
RESTRICTED=	"Unsure of codec's license"

COMMENT=	"Huge compilation of Win32 binary codecs"

DISTNAME=	win32codecs
DIST_SUBDIR=	win32-codecs-0.90
PKGNAME=	win32-codecs-0.90p0
CATEGORIES=	graphics

QTDLLS=		qt6dlls
WIN32DLLS=	win32codecs
REALDLLS=	rp8codecs

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "Unsure of codec's license"
PERMIT_PACKAGE_FTP=     "Unsure of codec's license"
PERMIT_DISTFILES_CDROM= "Unsure of codec's license"
PERMIT_DISTFILES_FTP=   "Unsure of codec's license"

MASTER_SITES=	ftp://mplayerhq.hu/MPlayer/releases/codecs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${QTDLLS}${EXTRACT_SUFX} ${REALDLLS}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${WIN32DLLS}/* ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${QTDLLS}/* ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${REALDLLS}/* ${PREFIX}/lib/win32

.include <bsd.port.mk>
