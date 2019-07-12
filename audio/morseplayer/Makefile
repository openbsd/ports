# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:36 sthen Exp $

COMMENT=		morse player

DISTNAME=		morseplayer-1.4
REVISION=		0
CATEGORIES=		audio

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m sndio

MASTER_SITES=		https://www.distfiles.pl/

MAKE_FLAGS+=		LDADD="-lsndio -lm"

FAKE_FLAGS=		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

NO_TEST=		Yes

.include <bsd.port.mk>
