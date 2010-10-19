# $OpenBSD: Makefile,v 1.9 2010/10/19 08:14:00 espie Exp $

COMMENT=		stylish window manager

DISTNAME=		wm2-4
CATEGORIES=		x11

HOMEPAGE=		http://www.all-day-breakfast.com/wm2/

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xau Xdmcp c m stdc++

MASTER_SITES=		http://www.all-day-breakfast.com/wm2/

FAKE_FLAGS=		PREFIX="${PREFIX}"

USE_X11=		Yes
USE_GROFF =	Yes

NO_REGRESS=		Yes

post-patch:
	cp ${FILESDIR}/Makefile ${WRKSRC}
	cp ${FILESDIR}/wm2.1 ${WRKSRC}

.include <bsd.port.mk>
