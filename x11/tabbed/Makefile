# $OpenBSD: Makefile,v 1.3 2013/03/11 11:46:16 espie Exp $

COMMENT=		simple generic tabbed frontend

DISTNAME=		tabbed-0.4.1

CATEGORIES=		x11

HOMEPAGE=		http://tools.suckless.org/tabbed

MAINTAINER=		Joerg Zinke <zinke@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://dl.suckless.org/tools/

RUN_DEPENDS=		fonts/terminus-font

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
