# $OpenBSD: Makefile,v 1.3 2004/11/21 17:51:45 espie Exp $

COMMENT=		"morse player"

DISTNAME=		morseplayer-1.2
CATEGORIES=		audio
HOMEPAGE=		http://www.thought.net/jason/radio/morseplayer.html
MAINTAINER=		Jason Wright <jason@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		http://www.thought.net/jason/radio/

FAKE_FLAGS=		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man" \
			DESTDIR="${WRKINST}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
