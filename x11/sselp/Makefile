# $OpenBSD: Makefile,v 1.2 2013/03/11 11:46:15 espie Exp $

COMMENT=		print X selection to standard out

DISTNAME=		sselp-0.2

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/sselp

MAINTAINER=             Joerg Zinke <zinke@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

MAKE_FLAGS=             CC="${CC}"
MAKE_ENV=               LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=             DESTDIR=""

NO_TEST=             Yes

.include <bsd.port.mk>
