# $OpenBSD: Makefile,v 1.9 2009/12/14 00:47:07 jakemsr Exp $

COMMENT=		morse player

DISTNAME=		morseplayer-1.4
PKGNAME=		${DISTNAME}p0
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
