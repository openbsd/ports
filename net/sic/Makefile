# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:56 espie Exp $

COMMENT=		simple irc client

DISTNAME=		sic-1.1
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/sic/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
