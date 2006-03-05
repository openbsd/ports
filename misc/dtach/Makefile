# $OpenBSD: Makefile,v 1.1.1.1 2006/03/05 17:05:36 niallo Exp $

COMMENT=		"tiny program emulating the detach feature of screen"
DISTNAME=		dtach-0.7
CATEGORIES=		misc

HOMEPAGE=		http://dtach.sourceforge.net/

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

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
