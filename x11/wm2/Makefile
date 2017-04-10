# $OpenBSD: Makefile,v 1.15 2017/04/10 11:46:37 sthen Exp $

COMMENT=		stylish window manager

DISTNAME=		wm2-4
REVISION=		0
CATEGORIES=		x11

HOMEPAGE=		http://www.all-day-breakfast.com/wm2/

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xau Xdmcp c m ${LIBCXX}

MASTER_SITES=		http://www.all-day-breakfast.com/wm2/

FAKE_FLAGS=		PREFIX="${PREFIX}"


NO_TEST=		Yes

post-patch:
	cp ${FILESDIR}/Makefile ${WRKSRC}
	cp ${FILESDIR}/wm2.1 ${WRKSRC}

.include <bsd.port.mk>
