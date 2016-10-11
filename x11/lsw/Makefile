# $OpenBSD: Makefile,v 1.5 2016/10/11 19:43:33 jung Exp $

COMMENT=		list titles of runnnig X windows

DISTNAME=		lsw-0.3
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/x/lsw

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
