# $OpenBSD: Makefile,v 1.3 2003/02/22 14:41:04 espie Exp $

ONLY_FOR_ARCHS=	i386
RESTRICTED=	"Unsure of codec's license"

COMMENT=	"Huge compilation of Win32 binary codecs"

VERSION=	0.90pre7
DISTNAME=	w32codec-${VERSION}
DIST_SUBDIR=	win32-codecs
PKGNAME=	win32-codecs-${VERSION}
CATEGORIES=	graphics
WRKSRC=		${WRKDIR}/w32codec-0.90

QTDLLS=		qt6dlls

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "Unsure of codec's license"
PERMIT_PACKAGE_FTP=     "Unsure of codec's license"
PERMIT_DISTFILES_CDROM= "Unsure of codec's license"
PERMIT_DISTFILES_FTP=   "Unsure of codec's license"

MASTER_SITES=	ftp://mplayerhq.hu/MPlayer/releases/
MASTER_SITES0=	ftp://mplayerhq.hu/MPlayer/releases/codecs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${QTDLLS}${EXTRACT_SUFX}:0
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	cp ${WRKSRC}/* 	${PREFIX}/lib/win32
	${INSTALL_DATA} ${WRKDIR}/${QTDLLS}/* ${PREFIX}/lib/win32
.include <bsd.port.mk>
