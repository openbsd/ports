# $OpenBSD: Makefile,v 1.3 2014/08/21 08:04:16 armani Exp $

COMMENT=		simple tar implementation

DISTNAME=		sltar-0.5
REVISION=		1

CATEGORIES=		archivers

HOMEPAGE=		https://github.com/Gottox/sltar

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://s01.de/dl/sltar/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
