# $OpenBSD: Makefile,v 1.3 2013/07/17 03:27:01 bentley Exp $

COMMENT=		simple pointer warping for X

DISTNAME=		swarp-0.1
REVISION =		0

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/swarp

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
