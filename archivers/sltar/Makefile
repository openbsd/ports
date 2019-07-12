# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:30 sthen Exp $

COMMENT=		simple tar implementation

DISTNAME=		sltar-0.5
REVISION=		1

CATEGORIES=		archivers

HOMEPAGE=		https://github.com/Gottox/sltar

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		http://s01.de/dl/sltar/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
