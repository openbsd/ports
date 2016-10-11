# $OpenBSD: Makefile,v 1.4 2016/10/11 19:45:18 jung Exp $

COMMENT=		simple pointer warping for X

DISTNAME=		swarp-0.1
REVISION =		1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/x/swarp

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
