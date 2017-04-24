# $OpenBSD: Makefile,v 1.3 2017/04/24 08:46:19 sthen Exp $

COMMENT=		simple plaintext presentation tool

DISTNAME=		sent-0.2
REVISION=		0

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
