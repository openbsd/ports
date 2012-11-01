# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 14:38:10 zinke Exp $

COMMENT=		simple pointer warping for X

DISTNAME=		swarp-0.1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/swarp

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
