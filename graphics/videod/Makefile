# $OpenBSD: Makefile,v 1.5 2006/08/03 12:53:18 espie Exp $

ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	"Video capture daemon for bktr driver"

VERSION=	1.2
DISTNAME=	videod-${VERSION}
CATEGORIES=	graphics
HOMEPAGE=	http://videod.csoft.org/
MASTER_SITES=	http://stable.csoft.org/videod/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/videod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/videod.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
