# $OpenBSD: Makefile,v 1.1.1.1 2003/07/17 18:00:51 espie Exp $

COMMENT='book about gimp'
CATEGORIES=books graphics

VERSION=1.0
DISTNAME=Grokking-the-GIMP-v${VERSION}
PKGNAME=grokking-the-gimp-${VERSION}

# Open publication license
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

MASTER_SITES=http://gimp-savvy.com/BOOK/TarDist/

DOC=share/doc/grokking-the-gimp/
SUBST_VARS=DOC

NO_BUILD=Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DOC}
	cp -R ${WRKSRC}/* ${PREFIX}/${DOC}

.include <bsd.port.mk>
