# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 14:39:36 zinke Exp $

COMMENT=		list titles of runnnig X windows

DISTNAME=		lsw-0.2

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/lsw

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
