# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:22 sthen Exp $

COMMENT=		simple generic tabbed frontend

DISTNAME=		tabbed-0.6

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/tabbed

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

RUN_DEPENDS=		fonts/terminus-font

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
