# $OpenBSD: Makefile,v 1.4 2003/04/21 07:16:11 sturm Exp $

ONLY_FOR_ARCHS=	i386
RESTRICTED=	"Unsure of codec's license"

COMMENT=	"Huge compilation of Win32 binary codecs"

DISTNAME=	win32codecs
DIST_SUBDIR=	${PKGNAME}
PKGNAME=	win32-codecs-0.90
CATEGORIES=	graphics

QTDLLS=		qt6dlls
WIN32DLLS=	win32codecs

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "Unsure of codec's license"
PERMIT_PACKAGE_FTP=     "Unsure of codec's license"
PERMIT_DISTFILES_CDROM= "Unsure of codec's license"
PERMIT_DISTFILES_FTP=   "Unsure of codec's license"

MASTER_SITES=	ftp://mplayerhq.hu/MPlayer/releases/codecs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${QTDLLS}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${WIN32DLLS}/* ${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${QTDLLS}/* ${PREFIX}/lib/win32

.include <bsd.port.mk>
