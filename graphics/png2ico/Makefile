# $OpenBSD: Makefile,v 1.6 2006/08/03 12:53:18 espie Exp $

COMMENT=	"Convert PNG images to Windows .ico files"

VERSION=	2002-12-08
PKGNAME=	png2ico-${VERSION:S/-//g}
DISTNAME=	png2ico-src-${VERSION}
CATEGORIES=	graphics www
HOMEPAGE=	http://www.winterdrache.de/freeware/png2ico/
MASTER_SITES=	${HOMEPAGE}data/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ z

LIB_DEPENDS=	png.>=3::graphics/png

MAKE_ENV=	CXX="${CXX}"
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/png2ico

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/png2ico ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/png2ico.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
