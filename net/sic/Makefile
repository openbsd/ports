# $OpenBSD: Makefile,v 1.6 2016/08/14 15:35:14 jca Exp $

COMMENT=		simple irc client

DISTNAME=		sic-1.2
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/sic/

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB=		c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
