# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:15 sthen Exp $

COMMENT=		list titles of running X windows

DISTNAME=		lsw-0.3
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/x/lsw

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
