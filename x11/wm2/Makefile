# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:24 sthen Exp $

COMMENT=		stylish window manager

DISTNAME=		wm2-4
REVISION =		3
CATEGORIES=		x11

HOMEPAGE=		http://www.all-day-breakfast.com/wm2/

# X11/MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xau Xdmcp c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://www.all-day-breakfast.com/wm2/

FAKE_FLAGS=		PREFIX="${PREFIX}"


NO_TEST=		Yes

post-patch:
	cp ${FILESDIR}/Makefile ${WRKSRC}
	cp ${FILESDIR}/wm2.1 ${WRKSRC}

.include <bsd.port.mk>
