# $OpenBSD: Makefile,v 1.11 2013/10/11 23:49:52 naddy Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. bktr(4) needed
ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	video capture daemon for bktr(4) driver

VERSION=	1.2
DISTNAME=	videod-${VERSION}
REVISION =	0
CATEGORIES=	graphics
HOMEPAGE=	http://videod.csoft.org/
MASTER_SITES=	http://stable.csoft.org/videod/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c jpeg>=62

LIB_DEPENDS=	graphics/jpeg

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/videod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/videod.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
