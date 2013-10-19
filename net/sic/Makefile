# $OpenBSD: Makefile,v 1.5 2013/10/19 09:49:51 jung Exp $

COMMENT=		simple irc client

DISTNAME=		sic-1.2

CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/sic/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
