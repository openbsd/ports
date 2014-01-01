# $OpenBSD: Makefile,v 1.9 2014/01/01 20:46:28 naddy Exp $

COMMENT=		tiny program emulating the detach feature of screen
DISTNAME=		dtach-0.8
REVISION=		1
CATEGORIES=		misc

HOMEPAGE=		http://dtach.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dtach/}
CONFIGURE_STYLE=	gnu
NO_TEST=		Yes

ALL_TARGET=		dtach

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/dtach ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dtach.1 ${PREFIX}/man/man1/dtach.1

.include <bsd.port.mk>
