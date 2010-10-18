# $OpenBSD: Makefile,v 1.5 2010/10/18 20:52:07 espie Exp $

COMMENT=		tiny program emulating the detach feature of screen
DISTNAME=		dtach-0.8
PKGNAME=		${DISTNAME}p0
CATEGORIES=		misc

HOMEPAGE=		http://dtach.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dtach/}
CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes
NO_REGRESS=		Yes

ALL_TARGET=		dtach

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/dtach ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dtach.1 ${PREFIX}/man/man1/dtach.1

.include <bsd.port.mk>
