# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:48 sthen Exp $

COMMENT=		simple irc client

DISTNAME=		sic-1.2
REVISION=		1

CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/sic/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
