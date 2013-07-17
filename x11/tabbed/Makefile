# $OpenBSD: Makefile,v 1.4 2013/07/17 03:27:01 bentley Exp $

COMMENT=		simple generic tabbed frontend

DISTNAME=		tabbed-0.4.1
REVISION =		0

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/tabbed

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

RUN_DEPENDS=		fonts/terminus-font

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
