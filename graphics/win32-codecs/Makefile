# $OpenBSD: Makefile,v 1.2 2002/10/27 00:03:17 naddy Exp $

ONLY_FOR_ARCHS=	i386
RESTRICTED=	"Unsure of codec's license"

COMMENT=	"Huge compilation of Win32 binary codecs"

VERSION=	0.60
DISTNAME=	w32codec-${VERSION}
PKGNAME=	win32-codecs-${VERSION}
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "Unsure of codec's license"
PERMIT_PACKAGE_FTP=     "Unsure of codec's license"
PERMIT_DISTFILES_CDROM= "Unsure of codec's license"
PERMIT_DISTFILES_FTP=   "Unsure of codec's license"

MASTER_SITES=	http://ernie.eit.uni-kl.de/avifile/ \
		ftp://mplayerhq.hu/MPlayer/releases/
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/win32
	cp ${WRKSRC}/* 	${PREFIX}/lib/win32

.include <bsd.port.mk>
