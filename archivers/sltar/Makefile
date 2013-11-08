# $OpenBSD: Makefile,v 1.1.1.1 2013/11/08 18:17:14 jung Exp $

COMMENT=		simple tar implementation

DISTNAME=		sltar-0.5

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
