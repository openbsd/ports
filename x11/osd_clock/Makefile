# $OpenBSD: Makefile,v 1.10 2010/10/19 08:13:58 espie Exp $

COMMENT=	xosd based clock
DISTNAME=	osd_clock-0.5
REVISION=	2

CATEGORIES=	x11
MASTER_SITES=	http://distfiles.nl/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes
USE_GROFF =	Yes

LIB_DEPENDS=	::x11/xosd
WANTLIB=	X11 Xext Xt c pthread xosd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/osd_clock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/osd_clock.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
