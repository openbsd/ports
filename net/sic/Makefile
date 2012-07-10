# $OpenBSD: Makefile,v 1.2 2012/07/10 14:40:46 zinke Exp $

COMMENT=		simple irc client

DISTNAME=		sic-1.1
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/sic/

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
