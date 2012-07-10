# $OpenBSD: Makefile,v 1.1.1.1 2012/07/10 12:24:54 zinke Exp $

COMMENT=		print X selection to standard out

DISTNAME=		sselp-0.2

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/sselp

MAINTAINER=             Joerg Zinke <zinke@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=             CC="${CC}"
MAKE_ENV=               LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=             DESTDIR=""

NO_REGRESS=             Yes

.include <bsd.port.mk>
