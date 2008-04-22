# $OpenBSD: Makefile,v 1.3 2008/04/22 20:52:49 wcmaier Exp $

COMMENT=		tiny program emulating the detach feature of screen
DISTNAME=		dtach-0.8
CATEGORIES=		misc

HOMEPAGE=		http://dtach.sourceforge.net/

MAINTAINER=		James Turner <james@bsdgroup.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dtach/}
CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

ALL_TARGET=		dtach

do-install:
	${INSTALL_PROGRAM}  ${WRKSRC}/dtach ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dtach.1 ${PREFIX}/man/man1/dtach.1

.include <bsd.port.mk>
