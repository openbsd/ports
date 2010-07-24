# $OpenBSD: Makefile,v 1.6 2010/07/24 06:29:07 ajacoutot Exp $

COMMENT=book about gimp
CATEGORIES=books graphics

VERSION=1.0
DISTNAME=Grokking-the-GIMP-v${VERSION}
PKGNAME=grokking-the-gimp-${VERSION}
REVISION=1

# Open publication license
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

HOMEPAGE=	http://gimp-savvy.com/
MASTER_SITES=${HOMEPAGE}BOOK/TarDist/

DOC=share/doc/grokking-the-gimp/
SUBST_VARS=DOC

NO_BUILD=Yes
PKG_ARCH=*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DOC}
	cp -R ${WRKSRC}/* ${PREFIX}/${DOC}

.include <bsd.port.mk>
