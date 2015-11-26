# $OpenBSD: Makefile,v 1.2 2015/11/26 09:57:07 jung Exp $

COMMENT=		simple plaintext presentation tool

DISTNAME=		sent-0.2

CATEGORIES=		misc productivity

HOMEPAGE=		http://tools.suckless.org/sent

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xft c fontconfig m png

MASTER_SITES=		http://dl.suckless.org/tools/

LIB_DEPENDS=		graphics/png

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
