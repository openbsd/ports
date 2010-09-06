# $OpenBSD: Makefile,v 1.10 2010/09/06 00:04:28 sthen Exp $

COMMENT=		morse player

DISTNAME=		morseplayer-1.4
REVISION=		0
CATEGORIES=		audio

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m sndio

# no longer exists
#MASTER_SITES=		http://www.thought.net/jason/radio/
MASTER_SITES=		${MASTER_SITE_OPENBSD}

MAKE_FLAGS+=		LDADD="-lsndio -lm"

FAKE_FLAGS=		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/cat"

NO_REGRESS=		Yes

.include <bsd.port.mk>
