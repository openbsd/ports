# $OpenBSD: Makefile,v 1.4 2006/09/18 10:21:49 espie Exp $

COMMENT=	"xosd based clock"
DISTNAME=	osd_clock-0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://leftorium.net/software/osd_clock/ \
		http://leftorium.net/software/osd_clock/old/

HOMEPAGE=	http://leftorium.net/software.phtml

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes

LIB_DEPENDS=	xosd.>=4.12::x11/xosd
WANTLIB=	X11 Xext Xt c pthread

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/osd_clock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/osd_clock.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
