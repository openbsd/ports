# $OpenBSD: Makefile,v 1.14 2013/03/10 22:55:03 espie Exp $

COMMENT=		morse player

DISTNAME=		morseplayer-1.4
REVISION=		0
CATEGORIES=		audio

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m sndio

# no longer exists
#MASTER_SITES=		http://www.thought.net/jason/radio/
MASTER_SITES=		${MASTER_SITE_OPENBSD}

MAKE_FLAGS+=		LDADD="-lsndio -lm"

FAKE_FLAGS=		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

NO_TEST=		Yes

.include <bsd.port.mk>
